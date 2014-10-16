# Mount points listed here will be automatically mounted and added to fstab
controller01.darkstarnet:
  mounts:
    /dev/sda2:
      target: /var/lib/mysql
      fstype: xfs
