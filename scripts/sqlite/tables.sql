CREATE TABLE show ( 
    show_id TEXT, 
    name TEXT unique NOT NULL, 
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME,
    CONSTRAINT show_pk PRIMARY KEY (show_id)
);
CREATE TABLE step ( 
    step_id TEXT, 
    show_id TEXT,
    minutes INT NOT NULL,
    seconds INT NOT NULL,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME,
    CONSTRAINT step_pk PRIMARY KEY (step_id),
    CONSTRAINT step_show_fk FOREIGN KEY (show_id) REFERENCES show(show_id) ON DELETE CASCADE
);