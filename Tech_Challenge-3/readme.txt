Install below jq package in os.

brew install --HEAD jq
Run below command:

echo '{"x1":{"y1":{"z1":"a1"}}}'
| jq '.. | .z1? | select(. != null)'
---------
Output: a1

