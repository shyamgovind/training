class system_setup::hiera(
$my_name,  # $my_name = hiera('my_name'),
)
{

  $my_message = hiera('message')

  notice("The message from hiera is : ${my_message}.")

}
