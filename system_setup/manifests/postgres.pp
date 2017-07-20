class system_setup::postgres {

  package { "postgresql" :
    ensure => present,
    before => [File['/etc/postgresql.conf'],User['bob']],
  }

  user { "bob":
    ensure => present,
  }

  file { "/etc/postgresql.conf" :
    ensure  => file,
    source  => "/tmp/postgresql.conf",
    #require => Package['postgresql'],
    notify  => Service['postgresqld'],
  }

  service { "postgresqld" :
    ensure  => running,
    enable  => true,
    #subscribe => File['/etc/postgresql'],
  }

}
