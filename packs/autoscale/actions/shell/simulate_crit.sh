#!/usr/bin/env bash
DATA="alert=%7B%22created_at%22%3A%222015-02-03T01%3A07%3A00Z%22%2C%22servers%22%3A%5B%22glaswegians-clops%22%5D%2C%22account_name%22%3A%22fryman.io%22%2C%22alert_policy_name%22%3A%22Default%20server%20alert%20policy%22%2C%22severity%22%3A%22critical%22%2C%22message%22%3A%22CPU%20%3E%2080%25%22%2C%22short_description%22%3A%22New%20alert%20on%20glaswegians-clops%22%2C%22long_description%22%3A%22Alert%20opened%3A%20CPU%20%3E%2080%25%22%2C%22alert_url%22%3A%22https%3A%2F%2Frpm.newrelic.com%2Faccounts%2F880740%2Fincidents%2F11717078%22%2C%22server_events%22%3A%5B%7B%22server%22%3A%22glaswegians-clops%22%2C%22created_at%22%3A%222015-02-03T01%3A07%3A00Z%22%2C%22message%22%3A%22CPU%20%3E%2060%25%22%7D%2C%7B%22server%22%3A%22glaswegians-clops%22%2C%22created_at%22%3A%222015-02-03T01%3A07%3A00Z%22%2C%22message%22%3A%22CPU%20%3E%2080%25%22%7D%5D%7D"

curl -X POST http://localhost:10001/st2/nrhook/ --data $DATA

