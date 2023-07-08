#!/usr/bin/env make
.PHONY: run_website stop_website

run_website:
	docker build -t explorecalifornia.com . && \
		docker run --rm --name explorecalifornia.com -dp 5000:80 explorecalifornia.com

stop_website:
	docker stop explorecalifornia.com
