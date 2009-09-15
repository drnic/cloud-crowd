# Getting started with development on cloud-crowd:
#     gem install hoe
#     rake install_gem   # will install any development dependencies you need
#     rake setup_test_database
#     rake test

require 'rubygems'
require 'hoe'

Hoe.plugin :newgem

Hoe.spec 'cloud-crowd' do
  developer 'Jeremy Ashkenas', 'jeremy@documentcloud.org'
  self.url         = "http://wiki.github.com/documentcloud/cloud-crowd"
  self.summary     = "Parallel Processing for the Rest of Us"
  self.description = <<-EOS.gsub(/^    /, '')
    The crowd, suddenly there where there was nothing before, is a mysterious and
    universal phenomenon. A few people may have been standing together -- five, ten
    or twelve, nor more; nothing has been announced, nothing is expected. Suddenly
    everywhere is black with people and more come streaming from all sides as though
    streets had only one direction.
  EOS

  extra_deps << ['sinatra',       '>= 0.9.4']
  extra_deps << ['activerecord',  '>= 2.3.3']
  extra_deps << ['json',          '>= 1.1.7']
  extra_deps << ['rest-client',   '>= 1.0.3']
  extra_deps << ['right_aws',     '>= 1.10.0']
  extra_deps << ['daemons',       '>= 1.0.10']

  extra_dev_deps << ['faker',               '>= 0.3.1']
  extra_dev_deps << ['thoughtbot-shoulda',  '>= 2.10.2']
  extra_dev_deps << ['notahat-machinist',   '>= 1.0.3']
  extra_dev_deps << ['rack-test',           '>= 0.4.1']
  extra_dev_deps << ['mocha',               '>= 0.9.7']
  extra_dev_deps << ['newgem',              '>= 1.5.2']
end

desc "Setup the test database"
task :setup_test_database do
  sh "mysqladmin -uroot create cloud_crowd_test"
  sh "cd test/config && ruby ../../bin/crowd load_schema"
end

