% recordingLabel(labelID/char,labelName/char,location/char).
% artist(artistID/char,firstName/char,lastName/char,yearBorn/numeric).
% musicalGroup(groupCode/char,groupName/char).
% member(groupCode/char,artistID/char,fromDate/numeric,toDate/numeric).
% cd(cdCode/char,cdTitle/char,numberSold/numeric,year/numeric,labelID/char,groupCode/char).
% topCDs(cdCode/char,year/numeric,rating/numeric).
% song(songCode/char,songTitle/char).
% composedOf(cdCode/char,songCode/char,trackNumber/numeric).
% writtenBy(songCode/char,artistID/char).
% topSongs(songCode/char,year/numeric,rating/numeric).

% recordingLabel(labelID/char,labelName/char,location/char).
recordingLabel('L1','A&M Records','Los Angeles').
recordingLabel('L2','Reprise Records','New York').
recordingLabel('L3','Disney Records','Los Angeles').
recordingLabel('L4','Country Club','Detroit').
recordingLabel('L5','Gray Dot Records','Detroit').
recordingLabel('L6','Disney Records','Detroit').
recordingLabel('L7','BMG Records','Phoenix').
recordingLabel('L8','Universal Records','Texas').

% artist(artistID/char,firstName/char,lastName/char,yearBorn/numeric).
artist('A1','Bjorn','Friedman',1945).
artist('A2','Heidi','Helmut',1945).
artist('A3','John','Stark',1971).
artist('A4','Michael','Agnelo',1975).
artist('A5','Michelle','Agnelo',1975).
artist('A6','Francis','McDermott',1960).
artist('A7','Steve','Nash',1965).
artist('A8','Lisa','Raymond',1973).
artist('A9','Janet','Brown',1972).
artist('A10','Henry','Brown',1966).
artist('A11','Keith','Urban',1970).
artist('A12','John','Hopkins',1960).
artist('A13','Jim','Kate',1970).
artist('A14','Jacky','Chen',1945).

% musicalGroup(groupCode/char,groupName/char).
musicalGroup('G1','Deutsch Moss').
musicalGroup('G2','Sweet Symphony').
musicalGroup('G3','Thundering Typhoons').
musicalGroup('G4','Great Snakes').
musicalGroup('G5','Keith Urban').
musicalGroup('G6','Beyond').
musicalGroup('G7','Backstreet Boys').
musicalGroup('G8','Tomorrow').

% member(groupCode/char,artistID/char,fromDate/numeric,toDate/numeric).
member('G1','A1',1970,1990).
member('G2','A1',1991,0).
member('G1','A2',1970,1990).
member('G1','A3',1971,0).
member('G2','A4',1995,0).
member('G5','A4',1997,0).
member('G2','A5',1995,2003).
member('G3','A6',1985,0).
member('G3','A7',2000,0).
member('G1','A8',1991,2003).
member('G4','A9',1990,2003).
member('G1','A9',1980,2003).
member('G2','A9',1998,0).
member('G4','A10',1990,0).
member('G6','A10',1998,0).
member('G5','A11',1980,2003).
member('G8','A10',1950,1978).
member('G7','A1',1980,0).
member('G7','A2',1967,1969).
member('G7','A3',1980,1981).
member('G2','A14',1960,0).

% cd(cdCode/char,cdTitle/char,numberSold/numeric,year/numeric,labelID/char,groupCode/char).
cd('C1','Goodnight',500000,2001,'L1','G1').
cd('C2','Sweet Dreams',100000,1990,'L6','G2').
cd('C3','Forgotten',800000,1998,'L4','G2').
cd('C4','Friday Night',800000,2003,'L1','G3').
cd('C5','Hot As Hell',750000,2003,'L3','G3').
cd('C6','Golden Hits',400000,1998,'L3','G4').
cd('C7','Broken',600000,2003,'L1','G4').
cd('C8','Golden Road',800000,2003,'L3','G4').
cd('C9','Function',100000,2002,'L2','G4').
cd('C10','Be Here',790000,2003,'L1','G5').
cd('C11','Ranch',450000,2003,'L5','G2').
cd('C12','Horse of a Different Color',900000,2001,'L1','G5').
cd('C13','Rain',450000,2000,'L1','G5').
cd('C14','Color',40000,2000,'L4','G1').
cd('C15','Wonderful',89000,1997,'L5','G5').
cd('C16','Happy',99000,1994,'L6','G5').
cd('C17','Moon Lake',25000,1998,'L4','G6').
cd('C18','Summer Fiesta',75000,2003,'L5','G6').
cd('C19','Kettie',800000,2001,'L6','G6').
cd('C20','Celebrate',790000,2003,'L2','G6').
cd('C21','Sunshine',34000,2001,'L8','G6').

% topCDs(cdCode/char,year/numeric,rating/numeric).
topCDs('C1',2001,2).
topCDs('C2',1990,1).
topCDs('C3',1998,6).
topCDs('C4',2003,3).
topCDs('C5',2003,9).
topCDs('C6',1998,1).
topCDs('C7',2003,2).
topCDs('C8',2003,1).
topCDs('C9',2002,5).
topCDs('C10',2003,4).
topCDs('C11',2003,11).
topCDs('C12',2001,1).
topCDs('C13',2000,15).

% song(songCode/char,songTitle/char).
song('S1','Sweet Dreams').
song('S2','Goodnight').
song('S3','My Lullaby').
song('S4','I Have A Dream').
song('S5','Forgotten').
song('S6','How Could You').
song('S7','Breathless').
song('S8','My Oh My').
song('S9','Ooh La La').
song('S10','Fire').
song('S11','Hot As Hell').
song('S12','Goldilocks').
song('S13','One Of Us').
song('S14','Mamma Mia').
song('S15','Broken').
song('S16','Life Or Death').
song('S17','Days Go By').
song('S18','Another Day in Paradise').
song('S19','Smile').

% composedOf(cdCode/char,songCode/char,trackNumber/numeric).
composedOf('C1','S1',1).
composedOf('C1','S2',2).
composedOf('C1','S3',3).
composedOf('C1','S12',4).
composedOf('C1','S11',5).
composedOf('C1','S13',6).
composedOf('C1','S10',7).
composedOf('C1','S8',8).
composedOf('C2','S4',1).
composedOf('C3','S5',1).
composedOf('C3','S6',2).
composedOf('C4','S7',1).
composedOf('C4','S8',2).
composedOf('C4','S9',3).
composedOf('C5','S10',1).
composedOf('C5','S11',2).
composedOf('C5','S8',3).
composedOf('C6','S12',1).
composedOf('C6','S13',2).
composedOf('C6','S14',3).
composedOf('C7','S15',1).
composedOf('C7','S16',2).
composedOf('C7','S10',3).
composedOf('C8','S17',1).
composedOf('C8','S18',2).
composedOf('C8','S1',3).
composedOf('C8','S2',4).
composedOf('C8','S7',5).
composedOf('C8','S19',6).
composedOf('C8','S8',7).
composedOf('C8','S9',8).
composedOf('C8','S11',9).
composedOf('C8','S12',10).
composedOf('C9','S18',1).
composedOf('C9','S1',2).
composedOf('C9','S2',3).
composedOf('C9','S3',4).
composedOf('C9','S4',5).
composedOf('C9','S5',6).
composedOf('C9','S6',7).
composedOf('C9','S7',8).
composedOf('C9','S8',9).
composedOf('C10','S1',1).
composedOf('C10','S2',2).
composedOf('C11','S2',1).
composedOf('C11','S3',2).
composedOf('C12','S3',1).
composedOf('C13','S1',1).
composedOf('C13','S7',2).
composedOf('C13','S6',3).
composedOf('C13','S2',4).
composedOf('C13','S3',5).
composedOf('C13','S4',6).
composedOf('C13','S5',7).
composedOf('C14','S5',1).
composedOf('C14','S6',2).
composedOf('C14','S7',3).
composedOf('C14','S8',4).
composedOf('C14','S9',5).
composedOf('C15','S6',1).
composedOf('C16','S8',1).
composedOf('C16','S9',2).
composedOf('C17','S9',1).
composedOf('C18','S1',1).
composedOf('C18','S10',2).
composedOf('C18','S13',3).
composedOf('C19','S1',1).
composedOf('C19','S2',2).
composedOf('C19','S3',3).
composedOf('C20','S4',1).
composedOf('C20','S14',2).
composedOf('C20','S10',3).
composedOf('C21','S14',1).
composedOf('C21','S7',2).
composedOf('C21','S18',3).
composedOf('C21','S13',4).
composedOf('C21','S1',5).
composedOf('C21','S19',6).
composedOf('C21','S17',7).
composedOf('C21','S5',8).

% writtenBy(songCode/char,artistID/char).
writtenBy('S1','A1').
writtenBy('S2','A1').
writtenBy('S3','A12').
writtenBy('S4','A3').
writtenBy('S5','A1').
writtenBy('S5','A2').
writtenBy('S6','A2').
writtenBy('S7','A6').
writtenBy('S8','A7').
writtenBy('S9','A7').
writtenBy('S10','A8').
writtenBy('S11','A3').
writtenBy('S12','A8').
writtenBy('S13','A8').
writtenBy('S14','A8').
writtenBy('S15','A8').
writtenBy('S16','A9').
writtenBy('S17','A4').
writtenBy('S18','A10').
writtenBy('S19','A13').

% topSongs(songCode/char,year/numeric,rating/numeric).
topSongs('S1',1987,5).
topSongs('S2',1987,1).
topSongs('S4',1990,1).
topSongs('S5',1998,3).
topSongs('S6',1998,5).
topSongs('S8',2000,4).
topSongs('S10',1993,2).
topSongs('S11',1993,13).
topSongs('S12',1998,1).
topSongs('S14',1998,4).
topSongs('S15',1999,1).
topSongs('S16',1999,3).
topSongs('S17',2003,1).
topSongs('S18',2003,12).
topSongs('S19',2000,1).

