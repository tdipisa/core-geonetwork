CREATE TABLE Validation
  (
    metadataId   int,
    valType      varchar(40),
    status       int,
    tested       int,
    failed       int,
    valDate      varchar(30),
    
    primary key(metadataId, valType),
    foreign key(metadataId) references Metadata(id)
);

CREATE TABLE Thesaurus (
    id   varchar(250) not null,
    activated    varchar(1),
    primary key(id)
  );

ALTER TABLE Users ALTER COLUMN username TYPE varchar(256);

ALTER TABLE Metadata ALTER COLUMN createDate TYPE varchar(30);
ALTER TABLE Metadata ALTER COLUMN changeDate TYPE varchar(30);
ALTER TABLE Metadata ADD doctype varchar(255);

INSERT INTO Settings VALUES (910,1,'metadata',NULL);
INSERT INTO Settings VALUES (911,910,'enableSimpleView','true');
INSERT INTO Settings VALUES (912,910,'enableIsoView','true');
INSERT INTO Settings VALUES (913,910,'enableInspireView','false');
INSERT INTO Settings VALUES (914,910,'enableXmlView','true');
INSERT INTO Settings VALUES (915,910,'defaultView','simple');

INSERT INTO Settings VALUES (917,1,'metadataprivs',NULL);
INSERT INTO Settings VALUES (918,917,'usergrouponly','false');

INSERT INTO Settings VALUES (920,1,'threadedindexing',NULL);
INSERT INTO Settings VALUES (921,920,'maxthreads','1');
INSERT INTO Settings VALUES (17,10,'svnUuid','');

INSERT INTO Settings VALUES (950,1,'autodetect',NULL);
INSERT INTO Settings VALUES (951,950,'enable','true');
INSERT INTO Settings VALUES (952,1,'requestedLanguage',NULL);
INSERT INTO Settings VALUES (953,952,'only','false');
INSERT INTO Settings VALUES (954,952,'sorted','true');
INSERT INTO Settings VALUES (955,952,'ignored','false');

UPDATE Settings SET value='2.7.0' WHERE name='version';
UPDATE Settings SET value='0' WHERE name='subVersion';