# Class: postfix::install
#
# Manges the postfix package.  Not intended to be called directly
#
#
# === Authors
#
# * Justin Lambert <mailto:jlambert@letsevenup.com>
#
#
# === Copyright
#
# Copyright 2013 EvenUp.
#
class postfix::install (
  $tls,
  $tls_package
) {

  package { 'sendmail':
    ensure => absent,
  }

  package { 'postfix':
    ensure  => latest,
    require => Package['sendmail'],
    notify  => Class['postfix::service'],
  }

  if ( $postfix::install::tls and $postfix::install::tls_package ) {
    package { $postfix::install::tls_package:
      ensure => latest,
    }
  }
}
