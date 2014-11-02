# Public: Install R to /Applications.
#
# Examples
#
#   include r
#
# Uses http://cran.rstudio.com as source as this should redirect to a local mirror.
class r {

  package { 'R_2_15_3':
    provider => 'apple',
    ensure => present,
    source   => 'http://cran.rstudio.com/bin/macosx/R-3.1.2-mavericks.pkg',
  }

}
