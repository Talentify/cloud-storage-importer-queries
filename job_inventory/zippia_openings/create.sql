CREATE TABLE job_inventory.zippia_openigns (
    external_id         STRING,
    title               STRING,
    parent_title        STRING,
    search_title_param  STRING,
    description     STRING,
    raw_location    STRING,
    location        STRUCT<
        country     STRING,
        city        STRING,
        state       STRING,
        zip         STRING
    >,
    company_name    STRING,
    industry        STRING,
    url             STRING,
    estimated_salary        STRING,
    estimated_salary_type   STRING,
    posted          STRING,
    skillset        ARRAY<STRING>,
    tags            ARRAY<STRING>,
    highlights      STRUCT<
        Tags                ARRAY<STRING>,
        Qualifications      ARRAY<STRING>,
        Benefits            ARRAY<STRING>,
        Priorities          ARRAY<
            STRUCT<
                name    STRING,
                value   FLOAT64
            >
        >
    >
)
PARTITION BY
    _PARTITIONDATE
CLUSTER BY
    title,
    raw_location,
    company_name,
    industry