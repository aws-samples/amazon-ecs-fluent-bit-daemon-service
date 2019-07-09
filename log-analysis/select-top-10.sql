SELECT source,
         remote AS IP,
         count(remote) AS num_requests
FROM fluentbit_consolidated
GROUP BY  remote, source
ORDER BY  num_requests DESC LIMIT 10
