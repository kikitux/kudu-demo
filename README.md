# kudu-demo

This is a Vagrant project for kudu.

Edit Vagrantfile and adjust `numtserver`

By default `node0` is master node, and all in one, that is master + tserver.

If `numtserver > 0` it will create `node1..nodeN` and the roles will be:

`node0` master

`node1..nodeN` tserver

## sample run

`numtserver = 3`

```shell
vagrant up --no-provision
vagrant provision

kudu (master *) $ vagrant provision
..
==> node0: master
==> node0: Kudu Master Server is running[  OK  ]
..
==> node1: tserver
==> node1: Kudu Tablet Server is running[  OK  ]
..
==> node2: tserver
==> node2: Kudu Tablet Server is running[  OK  ]
..
==> node3: tserver
==> node3: Kudu Tablet Server is running[  OK  ]
```

