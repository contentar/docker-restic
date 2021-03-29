#!/bin/ash



OS_type="`uname -m`"
case $OS_type in
  x86_64|amd64)
    OS_type='amd64'
    ;;
  i?86|x86)
    OS_type='386'
    ;;
  arm*)
    OS_type='arm'
    ;;
  aarch64)
    OS_type='arm64'
    ;;
  *)
    echo 'OS type not supported'
    exit 2
    ;;
esac

wget -O restic.bz2 https://github.com/restic/restic/releases/download/v0.12.0/restic_0.12.0_linux_${OS_type}.bz2
bzip2 -d restic.bz2
mv restic /usr/local/bin/
chmod +x /usr/local/bin/restic
