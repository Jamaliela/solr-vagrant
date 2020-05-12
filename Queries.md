curl -X POST -H 'Content-Type: application/json' 'http://localhost:8983/solr/metadata/update?commit=true' -d '{ "delete": {"query":"*:*"} }'
