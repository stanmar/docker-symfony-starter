#!/bin/sh

test -e ~/app/.env && ln -sfn ../.env ~/app/.env || echo "symfony project don't have env file" >&2