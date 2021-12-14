host="fabmedical-893.documents.azure.com"
username="fabmedical-893"
password="XxFSMvbNfr7PavMX8bYQ0rCfbIVEJ8vkNzmchGti8wQbVBtSCj4wrzGXdvZ8WdZp7CPTrMtCEFy7dVQwzFwNFQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
