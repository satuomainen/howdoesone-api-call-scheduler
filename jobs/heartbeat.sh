#!/usr/bin/env sh

# Log a heartbeat from the job scheduler service to allow detecting if the
# service goes down.
#
# The idea is that a cloud logging system can be set up to monitor the absence
# of the heartbeat from the logs and raise an alarm. For example AWS Cloudwatch
# Alarms could be used to achieve this.

echo "Job scheduler is alive at $( date -Iseconds )"
