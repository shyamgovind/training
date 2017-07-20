class system_setup::new (
 $user_name = $::system_setup::params::system_user ,
) inherits system_setup::params
  {
  #include system_setup::params

  user { $user_name
    ensure => present,
  }
}





  #  include system_setup::variables
  #$company = "Puppet"
  #notice("My company from new class is ${::system_setup::variables::company}")
  #notice("value of variable company : ${company}")


