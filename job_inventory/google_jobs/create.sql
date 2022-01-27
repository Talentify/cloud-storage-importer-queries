create table job_inventory.google_jobs_openings (
    company_name    STRING,
    title           STRING,
    raw_location    STRING,
    description     STRING,
    highlights STRUCT<
        Qualifications      ARRAY<STRING>,
        Responsibilities    ARRAY<STRING>,
        Benefits            ARRAY<STRING>
    >,
    url STRING,
    company STRING
)
PARTITION BY
    _PARTITIONDATE
CLUSTER BY
    company_name,
    title,
    raw_location