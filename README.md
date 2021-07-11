1) ClickHouse in Docker: 2 shards, 2 instances:
    - I won't re-invent the weel, so have taken already written role from ansible-galaxy as template.
      https://galaxy.ansible.com/searchmetrics/ansible-role-docker-clickhouse

    - Ansible play `test_local_cluster.yml` creates docker network with 2 clickhouse nodes
      <img src="docs/created_clickhouse_containers.png" width="800" height="80">

3) Initializing new test scenario `default`



tested on:
MacOS BigSur 11.4: Darwin Kernel Version 20.5.0
Python 3.9.5
Docker version 20.10.7
