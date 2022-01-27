CREATE TABLE job_inventory.salary_dot_com (

    title       STRING,
    seo_title   STRING,
    type        STRING,
    region      STRUCT<
        city        STRING,
        state_id    STRING,
        county      STRING,
        lat         FLOAT64,
        lng         FLOAT64,
        timezone    STRING,
        query   STRUCT<
            salarydotcom    STRING
        >
    >,
    data ARRAY<
        STRUCT<
            pct             INT64,
            salary          STRING,
            location        STRING,
            last_updated    STRING
        >
    >
)
PARTITION BY
    _PARTITIONDATE
CLUSTER BY
    title,
    seo_title