-- sql/duckdb/tamara_shelter_query_adoption_aggregate.sql
-- ============================================================
-- PURPOSE
-- ============================================================
-- Summarize overall adoption activity across ALL stores.
--
-- This query answers:
-- - "What is our total revenue?"
-- - "What is the average sale fee?"
--
-- WHY:
-- - Establishes system-wide performance
-- - Provides a baseline before breaking results down by store
-- - Helps answer:
--   "Is overall performance up or down?"

SELECT
  COUNT(*) AS adoption_count,
  ROUND(SUM(fee), 2) AS total_fee,
  ROUND(AVG(fee), 2) AS avg_fee
FROM adoption;
