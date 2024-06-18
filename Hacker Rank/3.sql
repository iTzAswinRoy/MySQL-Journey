-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
-- * * * * * 
-- * * * * 
-- * * * 
-- * * 
-- *
SELECT 
    REPEAT('* ', 5)
UNION ALL
SELECT 
    REPEAT('* ', 4)
UNION ALL
SELECT 
    REPEAT('* ', 3)
UNION ALL
SELECT 
    REPEAT('* ', 2)
UNION ALL
SELECT '*';
