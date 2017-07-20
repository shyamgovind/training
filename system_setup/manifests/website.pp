define system_setup::website(
  $dir_path,
  $index_page,
){
user { "bob_${title}" :
  ensure => present,
}

file { $dir_path :
  ensure => directory,
}

file { "${dir_path}/${index_page}" :
  ensure => file,
}


}
