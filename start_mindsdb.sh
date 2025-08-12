#!/bin/sh
set -e

echo "Starting MindsDB with custom config..."
exec python -m mindsdb --api=http,mysql --config=/root/mindsdb_config.json
