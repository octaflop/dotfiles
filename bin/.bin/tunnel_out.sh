#!/bin/sh

ngrok http -subdomain faris -host-header=rewrite local.docker:8000
