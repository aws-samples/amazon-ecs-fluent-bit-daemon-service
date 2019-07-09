CREATE OR REPLACE VIEW "fluentbit_consolidated" AS
SELECT * , 'ECS' as source
FROM fluentbit_ecs
UNION
SELECT * , 'EKS' as source
FROM fluentbit_eks