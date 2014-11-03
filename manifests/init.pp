# Public: Install R to /Applications.
#
# Examples
#
#   include r
#
# Uses http://cran.rstudio.com as source as this should redirect to a local mirror.
class r {
  $command = "curl 'http://cran.rstudio.com/bin/macosx/R-3.1.2-mavericks.pkg' -L -q -o '/opt/boxen/cache/R.pkg'"

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
