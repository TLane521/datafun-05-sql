-- sql/duckdb/tamara_shelter_query_adoption_by_animal_type.sql
-- ============================================================
-- PURPOSE
-- ============================================================
-- Break overall adoption performance down by animal type.
--
-- This query answers:
-- "How many adoptions and how much fees do we have by animal type?"
--
-- WHY:
-- - Overall totals hide important differences.
-- - Grouping lets us compare parts of the system.
-- - This often reveals where action is needed:
--   * Which categories drive revenue?
--   * Which categories underperform?
--
-- IMPORTANT:
-- This query uses GROUP BY but does NOT join tables yet.
-- We are still working only with the dependent/child table (sale).

SELECT
  animal_type,
  COUNT(*) AS adoption_count,
  ROUND(SUM(fee), 2) AS total_fee,
  ROUND(AVG(fee), 2) AS avg_fee
FROM adoption
GROUP BY animal_type
ORDER BY total_fee DESC;
