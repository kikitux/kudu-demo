#!/usr/bin/env bash

echo master

#packages
p="kudu-master"
rpm -q ${p} &>/dev/null || {
  yum install -y ${p}
}

service kudu-master start
chkconfig kudu-master on
