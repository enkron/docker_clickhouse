#!/bin/bash

servers="0.0.0.0:49313 0.0.0.0:49317"

sql_query="CREATE TABLE IF NOT EXISTS test_table
(
    date Date,
    id UInt32,
    value String
)
ENGINE = MergeTree(date, (id), 8192);"

for server in $servers; do
    echo $sql_query | curl -XPOST 'http://'$server'/' --data-binary @-
    echo "INSERT INTO test_table(date,id,value) VALUES ('2006-08-08',1,'https://www.helloclickhouse.com/')" | curl -XPOST 'http://'$server'/' --data-binary @-
done

#echo "SHOW DATABASES" |curl -XPOST http://0.0.0.0:49313/ --data-binary @-
echo "desc default.test_table" |curl -XPOST http://0.0.0.0:49313/ --data-binary @-
echo "SELECT * FROM default.test_table" |curl -XPOST http://0.0.0.0:49313/ --data-binary @-

echo "desc default.test_table" |curl -XPOST http://0.0.0.0:49317/ --data-binary @-
echo "SELECT * FROM default.test_table" |curl -XPOST http://0.0.0.0:49317/ --data-binary @-
