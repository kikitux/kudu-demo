#!/usr/bin/env bash

echo "running global script ${0} on ${HOSTNAME}"

#repo
[ -f /etc/yum.repos.d/cloudera-kudu.repo ] || {
  curl -sSL http://archive.cloudera.com/beta/kudu/redhat/6/x86_64/kudu/cloudera-kudu.repo -o /etc/yum.repos.d/cloudera-kudu.repo
}

chkconfig ntpd on
service ntpd status && service ntpd restart || service ntpd start
