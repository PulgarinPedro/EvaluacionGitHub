CREATE TABLE IF  NOT EXISTS member (
     id SERIAL,
     fullname VARCHAR(100) NOT NULL,
     email VARCHAR(30) NOT NULL,
     age INT NOT NULL,
     PRIMARY KEY (id),
     UNIQUE(email)
);


CREATE TABLE IF NOT EXISTS event(
     id SERIAL,
     description VARCHAR (100) NOT NULL,
     start_date DATE NULL,
     end_date DATE NULL,
     total_attendees INT NOT NULL,
     city VARCHAR (50) NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS conference (
     id SERIAL,
     title VARCHAR (100) NOT NULL,
     speaker VARCHAR (100),
     hora VARCHAR (100) NOT NULL,
     day VARCHAR (100) NOT NULL,
     total_attendees INT NOT NULL,
     event_id INT NOT NULL,
     PRIMARY KEY (id),
     FOREIGN KEY (event_id) REFERENCES event (id)
);

CREATE TABLE IF NOT NULL EXISTS register (
     id SERIAL,
     code VARCHAR (100) NOT NULL,
     register_at VARCHAR (100) NOT NULL,
     assisted VARCHAR (50) NOT NULL,
     member_id INT NOT NULL,
     conference_id INT NOT NULL,
     PRIMARY KEY(id),
     UNIQUE (code),
     FOREIGN KEY (member_id) REFERENCES member (id),
     FOREIGN KEY (conference_id) REFERENCES conference (id)
  );