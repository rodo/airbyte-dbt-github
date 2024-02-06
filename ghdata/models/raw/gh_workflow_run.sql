SELECT
created_at,
repository->>'name' as repository_name,
name,
status,
conclusion

FROM workflow_runs
