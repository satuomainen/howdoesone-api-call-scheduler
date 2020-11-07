# Scheduled API calls

This is a shoestring budget solution for making scheduled API calls to trigger
actions in services.

Benefits:

* Minimal resource needs for the container
* Stability of the tried-and-true cron system
* "Infrastructure as code"

The environment for running the scheduled tasks is very limited, basically you
have sh shell and curl.

## Basic idea

Cron is running in an Alpine linux instance. Output from the commands is
redirected to STDOUT and therefore to a cloud log.

## To add a new scheduled job

1. Create a shell script that does what needs to be done into
   [`./jobs`](`./jobs`).
1. Add cron a schedule into
   [`./schedule/scheduler.crontab`](`./schedule/scheduler.crontab`)

## To test that the schedule works

Use for example https://crontab.guru/ to figure out the correct format that
should go into the crontab file.

Run `docker-compose up --build` in the repository root to start the job
scheduler service. Observe the output and verify that it does what it is
supposed to.
