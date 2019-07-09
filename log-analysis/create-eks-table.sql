CREATE EXTERNAL TABLE fluentbit_eks (
    agent string,
    code string,
    host string,
    method string,
    path string,
    referer string,
    remote string,
    size string,
    user string
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://mh9-firelens-demo/eks2019/'