# Public: Install R to /Applications.
#
# Examples
#
#   include r
#
# Uses http://cran.rstudio.com as source as this should redirect to a local mirror.
class r {

  package { 'R_3_1_2':
    provider => 'compressed_pkg',
    ensure => present,
    source   => 'http://r.research.att.com/mavericks/R-3.1-branch/R-3.1-branch-mavericks-sa-x86_64.tar.gz',
  }

}
