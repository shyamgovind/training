class my_nginx {


  package { "nginx" :
    ensure => installed,
  }

  file { "/var/www" :
    ensure => directory,
  }

  file { "index file" :
    path    => "/var/www/index.html",
    ensure  => file,
    content => "My home page. \n",
  }

}
