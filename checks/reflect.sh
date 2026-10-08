#!/bin/sh
# The numero parameter is written into the /web response.
set -e
H=http://web:5000
curl -fsS "$H/web?numero=probe$$" | grep -q "probe$$"
