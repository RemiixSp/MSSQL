USE tempdb;
CREATE TABLE t1 (i int)
BEGIN TRAN
INSERT INTO t1 Values(1)USE tempdb;
CREATE TABLE t2 (i int)
BEGIN TRAN
INSERT INTO t2 Values(1)
UPDATE t1 SET i = 2


UPDATE t2 SET i = 2

