-- sql/duckdb/tamara_shelter_query_shelter_count.sql
-- ============================================================
-- PURPOSE
-- ============================================================
-- Answer a basic activity question:
-- "How many shelter events have occurred?"
--
-- This query operates on the dependent/child table.
--
-- WHY:
-- - Volume and revenue are different signals
-- - A store may have many small shelter or few large ones
-- - Analysts often start by understanding event counts
--   before analyzing monetary impact

SELECT
  COUNT(*) AS shelter_count
FROM shelter;
