1) ClickHouse in Docker: 2 shards, 2 instances:
    - I won't re-invent the weel, so have taken already written role from ansible-galaxy as template.
      https://galaxy.ansible.com/searchmetrics/ansible-role-docker-clickhouse

    - Ansible play `test_local_cluster.yml` creates docker network with 2 clickhouse nodes


tested on:
MacOS BigSur 11.4: Darwin Kernel Version 20.5.0
Python 3.9.5
Docker version 20.10.7

pip deps:
ansible==4.2.0
ansible-core==2.11.2
certifi==2021.5.30
cffi==1.14.6
chardet==4.0.0
cryptography==3.4.7
docker==5.0.0
idna==2.10
Jinja2==3.0.1
MarkupSafe==2.0.1
packaging==21.0
pycparser==2.20
pyparsing==2.4.7
PyYAML==5.4.1
requests==2.25.1
resolvelib==0.5.4
six==1.16.0
urllib3==1.26.6
websocket-client==1.1.0
