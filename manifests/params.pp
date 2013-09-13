# Class:: postfix::params
#
#
class postfix::params {
  $smtp_relay     = false
  $relay_host     = $::domain
  $mydomain       = $::domain
  $relay_networks = '127.0.0.1'
  $relay_domains  = ''
  $relay_username = ''
  $relay_password = ''
  $relay_port     = 25
  $tls            = false
  $logging        = ''
  $monitoring     = ''
} # Class:: postfix::params
