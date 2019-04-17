#!/bin/sh
# Workarounds for erroneous vagrant-pe_build behavior regarding rsync.
mkdir -p /vagrant/.pe_build/post-install
cp /vagrant/master.pp /vagrant/.pe_build/post-install/master.pp
tar -xzf /vagrant/puppet-enterprise-2018.1.7-el-7-x86_64.tar.gz -C /vagrant/.pe_build/
