require 'spec_helper'

describe 'r' do
  it do
    should contain_package('R_3_1_2').with({
      :provider => 'apple',
      :source   => 'http://cran.rstudio.com/bin/macosx/R-3.1.2-mavericks.pkg',
    })
  end
end
