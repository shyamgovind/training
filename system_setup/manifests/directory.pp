class system_setup::directory {

  file { "my_file" :
    path     => "/tmp/validatek/setup/my_file",
    ensure   => file,
    backup   => true,
    #content => "Hello world\n",
    source   => "puppet:///modules/system_setup/myfile.sample",
  }

file { ["/tmp/validatek","/tmp/validatek/setup"] :
  ensure  => directory,
}

}
