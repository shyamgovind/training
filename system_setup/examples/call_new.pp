# Taking parameter defaults
#include system_setup::new
# OR
#class { "system_setup::new" :
#}


# Passing parameter values
class { "system_setup::new" :
  user_name => "john",
}


