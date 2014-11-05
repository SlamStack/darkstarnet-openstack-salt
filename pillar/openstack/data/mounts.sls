# Mount points listed here will be automatically mounted and added to fstab
controller01.darkstarnet:
  mounts:
    /dev/sda2:
      target: /var/lib/mysql
      fstype: xfs
compute01.darkstarnet:
  mounts:
    /instances:
      target: /var/lib/nova/instances
      fstype: nfs
      server: 10.30.0.100
compute02.darkstarnet:
  mounts:
    /instances:
      target: /var/lib/nova/instances
      fstype: nfs
      server: 10.30.0.100
compute03.darkstarnet:
  mounts:
    /instances:
      target: /var/lib/nova/instances
      fstype: nfs
      server: 10.30.0.100
