CREATE TABLE studentInfo (
  stdId    INTEGER PRIMARY KEY, 
  name  TEXT,
  surname  TEXT
);

CREATE TABLE information (
  point    INTEGER, 
  city   TEXT, 

  FOREIGN KEY(point) REFERENCES studentInfo(stdId)
);

INSERT INTO studentInfo VALUES (1, 'Tom',' Chapin');
INSERT INTO studentInfo VALUES (2, 'Harry',' Chapin');

/* Tom's songs */
INSERT INTO information VALUES (100, 'Köln');
INSERT INTO information VALUES (20, 'Frankfurt');


/* It won't let us do this, because 3 isn't an artist id:
INSERT INTO tracks VALUES (2, 'Cats in the Cradle', 3);
*/

SELECT * FROM studentInfo;
SELECT * FROM information;