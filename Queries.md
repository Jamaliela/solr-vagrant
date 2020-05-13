# Solr Json Queries

Delete all entries in the index.
```
curl -X POST -H 'Content-Type: application/json' 'http://localhost:8983/solr/metadata/update?commit=true' -d '{ "delete": {"query":"*:*"} }'
```

Add a single document into the index.
```
curl -X POST -H 'Content-Type: application/json' 'http://localhost:8983/solr/metadata/update/json/docs?commit=true' --data-binary '
{
  "id": "221b93bc-568f-4a03-8e13-c849ae0cc0f0",
  "title": "Test Document",
  "description": "The description."
}'
```

Add multiple documents into the index.
```
curl -X POST -H 'Content-Type: application/json' 'http://localhost:8983/solr/metadata/update?commit=true' --data-binary '
[
  {
    "id": "c54032ef-a3bc-4acf-9272-4ab9249bb8a3",
    "title": "A Title",
    "description": "A description."
  },
  {
    "id": "fb9c048a-c202-4f07-b2ea-f1fdd20730d3",
    "title": "The Title",
    "description": "The description."
  }
]'
```

Update a document in the index.
```
curl -X POST -H 'Content-Type: application/json' 'http://localhost:8983/solr/metadata/update/json/docs?commit=true' --data-binary '
{
  "id": "221b93bc-568f-4a03-8e13-c849ae0cc0f0",
  "title": "Test Document",
  "description": "Test description."
}'
```