#!/bin/sh

set -e

/usr/local/bundle/bin/rubocop --require rubocop-rspec "$@"
