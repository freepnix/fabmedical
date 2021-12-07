host="fabmedical-ed3.mongo.cosmos.azure.com"
username="fabmedical-ed3"
password="brR7EvKsHSefZcjfsp8Eh1UvLbnHQEe5smxWuraiRlhw0pZfcoUdPSVFc0VzqZCBNReYsVslHl1lmSTOeqVQlA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
