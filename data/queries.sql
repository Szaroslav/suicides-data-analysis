SELECT
    COUNT(CASE WHEN country IS NULL THEN 1 END) country_null_count,
    COUNT(CASE WHEN year IS NULL THEN 1 END) year_null_count,
    COUNT(CASE WHEN sex IS NULL THEN 1 END) sex_null_count,
    COUNT(CASE WHEN age IS NULL THEN 1 END) age_null_count,
    COUNT(CASE WHEN suicides_no IS NULL THEN 1 END) suicides_no_null_count,
    COUNT(CASE WHEN population IS NULL THEN 1 END) population_null_count,
    COUNT(CASE WHEN suicides_per_100k IS NULL THEN 1 END) suicides_per_100k_null_count,
    COUNT(CASE WHEN hdi_per_year IS NULL THEN 1 END) hdi_per_year_null_count,
    COUNT(CASE WHEN gdp_per_year IS NULL THEN 1 END) gdp_per_year_null_count,
    COUNT(CASE WHEN gdp_per_capita IS NULL THEN 1 END) gdp_per_capita_null_count,
    COUNT(CASE WHEN generation IS NULL THEN 1 END) generation_null_count
FROM suicides

ALTER TABLE suicides DROP COLUMN hdi_per_year
