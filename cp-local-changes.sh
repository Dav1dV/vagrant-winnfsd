#!/bin/sh
#
# Copy local changes to here
#
version=1.1.0
dir_path=~/.vagrant.d/gems/gems/vagrant-winnfsd-$version
file_subpaths=(\
  bin/nfsservice.bat \
  lib/vagrant-winnfsd/cap/nfs.rb \
  lib/vagrant-winnfsd/synced_folder.rb \
)

for file_subpath in "${file_subpaths[@]}"; do
  echo
  command="cp \"$dir_path/$file_subpath\" \"$file_subpath\""
  echo "$command"
  eval $command
done
exit

cp ~/.vagrant.d/gems/gems/vagrant-winnfsd-$version/lib/vagrant-winnfsd/cap/nfs.rb lib/vagrant-winnfsd/cap/nfs.rb
cp ~/.vagrant.d/gems/gems/vagrant-winnfsd-$version/bin/nfsservice.bat bin/nfsservice.bat
cp ~/.vagrant.d/gems/gems/vagrant-winnfsd-$version/lib/vagrant-winnfsd/synced_folder.rb lib/vagrant-winnfsd/synced_folder.rb
