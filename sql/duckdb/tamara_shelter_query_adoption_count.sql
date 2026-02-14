-- sql/duckdb/tamara_shelter_query_adoption_count.sql
-- ============================================================
-- PURPOSE
-- ============================================================
-- Answer a simple structural question:
-- "How many adoptions do we have in our shelter system?"
--
-- This query does NOT involve the sale table.
-- It operates only on the independent/parent table.
--
-- WHY:
-- - Establishes the size of the system
-- - Provides context for other KPIs
-- - Helps answer questions like:
--   "Are we growing by adding locations, or just increasing sales?"

SELECT
  COUNT(*) AS adoption_count
FROM adoption;
