WITH steps AS (

    SELECT
        id,
        created_at,
        run_id,
        runner_name,
        name,
        status,
        conclusion,
        repository AS repository_name,
        run_attempt,
        jsonb_array_elements(steps) AS step
    FROM workflow_jobs

)


SELECT
    created_at,
    run_id,
    runner_name,
    name AS job_name,
    status,
    conclusion,
    repository_name,
    run_attempt,
    step ->> 'name' AS step_name,
    step ->> 'conclusion' AS step_conclusion
FROM steps
