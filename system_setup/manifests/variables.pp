class system_setup::variables {

$company = "Validatek"  # $::system_setup::variables::company

notice("My company is ${company} ")

notify {"standard print statement" :
  message => "My company is ${company}.",
}

if $company == "Puppet" 
{

}
elsif $company == "Microsoft"
{

}
else 
{
notice("This is from else")
}



}
