SELECT
    created_at,
    run_id,
    runner_name,
    name,
    status,
    conclusion,
    repository AS repository_name

FROM workflow_jobs
