#!/usr/bin/env bash

echo tserver

#packages
p="kudu-tserver"
rpm -q ${p} &>/dev/null || {
  yum install -y ${p}
}

service kudu-tserver start
chkconfig kudu-tserver on         
