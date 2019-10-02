# Centralized logging in action: multi-cluster log analysis

This repo contains the container runtime definitions and configurations for an
end-to-end demo of the Amazon Fluent Bit plugin, showing a multi-cluster (ECS/EKS)
log analysis, streaming the log data Kinesis Data Firehose to S3, where we then
query the log data with Amazon Athena.

See the blog: [Centralized Container Logging with Fluent Bit](https://aws.amazon.com/blogs/opensource/centralized-container-logging-fluent-bit/).

## Setup for Amazon ECS

See the [ecs/](ecs/) directory of this repo for all the source files.

## Setup for Amazon EKS

See the [eks/](eks/) directory of this repo for all the source files.

## Setup for log analysis

See the [log-analysis/](log-analysis/) directory of this repo for all the source files.

## License

All material available under the [Apache License Version 2.0](LICENSE).
