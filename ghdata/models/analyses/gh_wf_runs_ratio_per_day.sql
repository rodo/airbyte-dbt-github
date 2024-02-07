SELECT
    date_trunc('day', created_at)::date AS run_date,
    repository_name,
    conclusion,
    name,
    count(*)

FROM {{ ref('gh_workflow_run') }}

WHERE status = 'completed'

GROUP BY run_date, repository_name, conclusion, name
