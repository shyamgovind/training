class system_setup::templates {

file { "/tmp/hello.txt" :
  ensure  => file,
  content => epp('system_setup/myfile.epp')
}

}
