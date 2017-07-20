class system_setup::base {

  package { "command line browser" :
    name   => "lynx",
    ensure => present, 
  }

  user { "system admin" :
    name   => "bob",
    ensure => present,
  }

  file { "standards file" :
    path    => "/tmp/standards_file",
    ensure  => file,
    require => Package['command line browser'],
  }

  user { ["mary", "john", "jack"] :
    ensure => present,
  }


}
