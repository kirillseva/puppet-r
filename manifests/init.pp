# Public: Install R to /Applications.
#
# Examples
#
#   include r
#
# Uses http://cran.rstudio.com as source as this should redirect to a local mirror.
class r {

  exec { 'Download R':
    command => $command,
    before => Package['Install R']
  }
  package { 'Install R':
    provider => 'apple',
    ensure   => present,
    source   => '/opt/boxen/cache/R.pkg',
  }
}
