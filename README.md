# kudu-demo

This is a Vagrant project for kudu.

Edit Vagrantfile and adjust `numtserver`

By default `node0` is master node, and all in one, that is master + tserver.

If `numtserver > 0` it will create `node1..nodeN` and the roles will be:

`node0` master
`node1..nodeN` tserver

