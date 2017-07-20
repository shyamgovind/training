class system_setup::exec {

exec { "create directories" :
  command => 'mkdir -p /tmp/hello/world',
  unless  => '', # exit non-zero  or failure  
  #onlyif => '', # exit 0  or success
}

}
