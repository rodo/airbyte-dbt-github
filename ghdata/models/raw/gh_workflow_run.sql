SELECT
    created_at,
    name,
    status,
    conclusion,
    repository ->> 'name' AS repository_name

FROM workflow_runs
