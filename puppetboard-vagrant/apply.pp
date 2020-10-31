node 'puppet' {
  class { 'puppetdb::globals': version  => '5.2.18' }

  class { 'puppetdb::server':
    report_ttl     => '14d',
    node_ttl       => '10d',
    node_purge_ttl => '20d',
    java_args      => { '-Xmx' => '1g', '-Xms' => '512m' },
    database_host  => 'database',
    database_port  => '5432',
  }

  class { 'puppetdb::master::config':
    manage_report_processor => true,
    enable_reports          => true,
  }

  class { 'puppetboard': }
}

node 'database' {
  class { 'puppetdb::globals': version  => '5.2.18' }

  class { 'puppetdb::database::postgresql':
    listen_addresses    => 'database',
    manage_package_repo => false,
    database_port       => '5432',
  }

  class { 'postgresql::globals':
    server_package_name => 'postgresql105-postgresql-server', # similarly for other packages as desired
  }
}
