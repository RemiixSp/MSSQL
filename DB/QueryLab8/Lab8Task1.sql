USE tempdb;
GO
INSERT INTO table1 (i,col1,col2)
VALUES (1,'First row','First row');
INSERT INTO table1 (i,col1,col2)
VALUES (2,NULL,'Second row');
INSERT INTO table1 (i,col1,col2)
VALUES (3,'Third row','Third row');USE tempdb;
GO
SELECT i,col1,col2
FROM table1;

