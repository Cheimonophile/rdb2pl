
use std::fs;
use std::io::{BufReader, BufRead, Write};

use regex::Regex;

fn main() {

    // collect command line arguments
    let args: Vec<String> = std::env::args().collect();

    // create file regex
    let rgx_rdb = Regex::new(r"(.+)\.rdb").unwrap();
    let rgx_header = Regex::new(r"@(.+)(\(.+\)):.+").unwrap();

    // check the number of arguments
    if args.len() < 2 || args.len() > 3 {
        println!("{}", "Incorrect number of arguments");
    }

    // checks if the file is valid
    if !rgx_rdb.is_match(&args[1]){
        println!("Invalid filename.");
        return;
    }

    // open the rdb file
    let rdb_file = match fs::File::open(args[1].as_str()) {
        Ok(r) => r,
        Err(e) => {
            println!("{}", e);
            return;
        }
    };

    // get the filename
    let pl_filename = if args.len() > 2 {
        args[2].clone()
    } else {
        let filename = rgx_rdb.captures(&args[1]).unwrap().get(1).unwrap().as_str();
        format!("{}.pl", filename)
    };

    // create the new file
    let mut pl_file = match fs::File::create(pl_filename){
        Ok(r) => r,
        Err(e) => {
            println!("{}", e);
            return;
        }
    };

    // processes the file data
    let mut facts: Vec<String> = Vec::new();
    let reader = BufReader::new(rdb_file);
    let mut table_name = String::new();
    for line in reader.lines() {

        // turn the line into a string
        let line = match line {
            Ok(r) => r,
            Err(e) => {
                println!("{}", e);
                return;
            }
        };

        // if the line is a header
        match rgx_header.captures(&line) {
            Some(caps) => {

                table_name = String::from(caps.get(1).unwrap().as_str());
                let attributes = caps.get(2).unwrap().as_str();

                // make the Prolog header
                let pl_header = format!("% {}{}.\n", table_name, attributes);

                // write the header to the file
                match pl_file.write_all(pl_header.as_ref()) {
                    Err(e) => {
                        println!("{}", e);
                        return;
                    },
                    _=>(),
                };

                // append the header to the facts vector
                facts.push(pl_header);
            },
            None => {

                // if the line is blank
                match line.as_str() {
                    "" => {
                        // push a blank line to facts
                        facts.push(String::from("\n"));
                    }
                    _ => {
                        // create the Prolog fact
                        let fact = format!("{}({}).\n", table_name, line);

                        // push the fact to facts
                        facts.push(fact);
                    }
                }
            }
        }
    }

    // write the final database
    pl_file.write(&['\n' as u8]).unwrap();
    for line in facts {
        match pl_file.write_all(line.as_ref()) {
            Err(e) => {
                println!("{}", e);
                return;
            },
            _=>(),
        };
    }
}