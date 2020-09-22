#!/bin/sh
echo '{"x1":{"y1":{"z1":"a1"}}}' | jq '.. | .z1? | select(. != null)'

