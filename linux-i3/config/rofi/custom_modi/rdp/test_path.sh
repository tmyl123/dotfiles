echo "$0"
echo "$(pwd)"

CWD=$(cd -P -- "$(dirname -- "$0")" && pwd -P)

echo $CWD
