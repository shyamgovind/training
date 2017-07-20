class system_setup::users {

  user { "audit_user" :
    ensure => absent,
  }

  group { "staff" :
    ensure => present,
  }
}
