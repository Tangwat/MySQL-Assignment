Create Table Actor(
act_id		integer		not null,
act_fname	char(20)	not null,
act_lname	char(20)	not null,
act_gender	Char(1)		not null,
CONSTRAINT	ACTOR_PK		primary key(act_id)
);

CREATE TABLE DIRECTOR(
DIR_ID		INTEGER		NOT NULL,
DIR_FNAME	char(20)	not null,
DIR_LNAME	char(20)	not null,
CONSTRAINT		DIRECTOR_PK		primary key(DIR_ID)
);

CREATE TABLE MOVIE (
 Movie_ID  Integer  NOT NULL,
 MOV_TITLE VARCHAR(30)  NULL,
 MOV_YEAR Integer NOT NULL,
 MOV_TIME INTEGER NOT NULL,
 MOV_LANG VARCHAR(15) NULL,
 MOV_DT_REL Integer NOT NULL,
 MOVIE_REL_COUNTRY VARCHAR(15) NOT NULL,
 CONSTRAINT              MOVIE_PK       PRIMARY KEY(Movie_ID)
 );
 
CREATE TABLE GENRES (
 GEN_ID Integer NOT NULL,
 GEN_TITLE VARCHAR (20),
 CONSTRAINT  GENRES_PK  PRIMARY KEY(GEN_ID)
 );
 
  CREATE TABLE REVIEWER (
   REV_ID Integer NOT NULL,
   REV_NAME VARCHAR (30),
   CONSTRAINT	REVIEWER_PK	Primary key(rev_id)
);   

 
 CREATE TABLE MOVIE_CAST (
   ACT_ID 	Integer 		NOT NULL,
   MOVIE_ID 	Integer 			NOT NULL,
   ROLE 	VARCHAR(30)			NOT NULL,
   CONSTRAINT	MOVIE_CAST3_PK	PRIMARY key(ACT_ID,MOVIE_ID),
   CONSTRAINT	MOVIE_CAST1_FK	foreign key(ACT_ID)
								REFERENCES ACTOR (ACT_ID),
   CONSTRAINT	MOVIE_CAST2_FK	foreign key(MOVIE_ID)
								REFERENCES MOVIE (MOVIE_ID)                             
   );
    
   CREATE TABLE MOVIE_DIRECTION(
   DIR_ID	Integer NOT NULL,
   MOVIE_ID	Integer	NOT NULL,
   CONSTRAINT	MOVIE_DIR2_PK	PRIMARY key(dir_id,MOVIE_ID),
   CONSTRAINT	MOVIE_DIR2_FK	foreign key(dir_id)
								REFERENCES DIRECTOR (DIR_ID),
   CONSTRAINT	MOVIE_DIR4_Fk	foreign key(MOVIE_ID) 
								REFERENCES MOVIE(MOVIE_ID)
);
 
   CREATE TABLE RATING (
   MOVIE_ID			Integer	NOT NULL,
   REV_ID 			Integer	NOT NULL,
   REV_STARS		Integer	NOT NULL,
   NUM_O_RATINGS	Integer	NOT NULL,
   CONSTRAINT	RATING_PK	PRIMARY key(MOVIE_ID, REV_ID),
   CONSTRAINT	RATING1_FK	foreign key(MOVIE_ID)
								REFERENCES MOVIE (MOVIE_ID),
   CONSTRAINT	RATING2_FK	foreign key(REV_ID)
								REFERENCES REVIEWER (REV_ID)                            
   );
    
   CREATE TABLE MOVIE_GENRES(
   MOVIE_ID		Integer		not null,
   GEN_ID		Integer		not null,
   CONSTRAINT	MOVIE_GENRES5_PK	PRIMARY key(MOVIE_ID, GEN_ID),
   CONSTRAINT	MOVIE_GENRES2_FK	foreign key(MOVIE_ID)
								REFERENCES MOVIE (MOVIE_ID),
    CONSTRAINT	MOVIE_GENRES6_FK	foreign key(GEN_ID)
								REFERENCES genres (GEN_ID)                            
   );
   