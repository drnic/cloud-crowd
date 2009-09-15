# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{cloud-crowd}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeremy Ashkenas"]
  s.date = %q{2009-09-15}
  s.default_executable = %q{crowd}
  s.description = %q{The crowd, suddenly there where there was nothing before, is a mysterious and
universal phenomenon. A few people may have been standing together -- five, ten
or twelve, nor more; nothing has been announced, nothing is expected. Suddenly
everywhere is black with people and more come streaming from all sides as though
streets had only one direction.
}
  s.email = ["jeremy@documentcloud.org"]
  s.executables = ["crowd"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = [".yardopts", "EPIGRAPHS", "History.txt", "LICENSE", "Manifest.txt", "README.txt", "Rakefile", "TODO", "actions/graphics_magick.rb", "actions/process_pdfs.rb", "actions/word_count.rb", "bin/crowd", "cloud-crowd.gemspec", "config/config.example.ru", "config/config.example.yml", "config/database.example.yml", "config/database.yml", "examples/graphics_magick_example.rb", "examples/process_pdfs_example.rb", "examples/word_count_example.rb", "lib/cloud-crowd.rb", "lib/cloud_crowd/action.rb", "lib/cloud_crowd/app.rb", "lib/cloud_crowd/asset_store.rb", "lib/cloud_crowd/asset_store/filesystem_store.rb", "lib/cloud_crowd/asset_store/s3_store.rb", "lib/cloud_crowd/command_line.rb", "lib/cloud_crowd/daemon.rb", "lib/cloud_crowd/exceptions.rb", "lib/cloud_crowd/helpers.rb", "lib/cloud_crowd/helpers/authorization.rb", "lib/cloud_crowd/helpers/resources.rb", "lib/cloud_crowd/inflector.rb", "lib/cloud_crowd/models.rb", "lib/cloud_crowd/models/job.rb", "lib/cloud_crowd/models/work_unit.rb", "lib/cloud_crowd/models/worker_record.rb", "lib/cloud_crowd/runner.rb", "lib/cloud_crowd/schema.rb", "lib/cloud_crowd/worker.rb", "public/css/admin_console.css", "public/css/reset.css", "public/favicon.ico", "public/images/bullet_green.png", "public/images/bullet_white.png", "public/images/cloud_hand.png", "public/images/header_back.png", "public/images/logo.png", "public/images/queue_fill.png", "public/images/server_error.png", "public/images/sidebar_bottom.png", "public/images/sidebar_top.png", "public/images/worker_info.png", "public/images/worker_info_loading.gif", "public/js/admin_console.js", "public/js/excanvas.js", "public/js/flot.js", "public/js/jquery.js", "test/acceptance/test_app.rb", "test/acceptance/test_failing_work_units.rb", "test/acceptance/test_word_count.rb", "test/blueprints.rb", "test/config/actions/failure_testing.rb", "test/config/config.ru", "test/config/config.yml", "test/config/database.yml", "test/test_helper.rb", "test/unit/test_action.rb", "test/unit/test_configuration.rb", "test/unit/test_job.rb", "test/unit/test_work_unit.rb", "views/index.erb", "wiki/action.textile", "wiki/architecture.textile", "wiki/configuration_folder.textile", "wiki/gallery_of_actions.textile", "wiki/getting_started.textile", "wiki/home.textile", "wiki/job_api.textile", "wiki/wish_list.textile"]
  s.homepage = %q{http://wiki.github.com/documentcloud/cloud-crowd}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{cloud-crowd}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Parallel Processing for the Rest of Us}
  s.test_files = ["test/acceptance/test_app.rb", "test/acceptance/test_failing_work_units.rb", "test/acceptance/test_word_count.rb", "test/test_helper.rb", "test/unit/test_action.rb", "test/unit/test_configuration.rb", "test/unit/test_job.rb", "test/unit/test_work_unit.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 0.9.4"])
      s.add_runtime_dependency(%q<activerecord>, [">= 2.3.3"])
      s.add_runtime_dependency(%q<json>, [">= 1.1.7"])
      s.add_runtime_dependency(%q<rest-client>, [">= 1.0.3"])
      s.add_runtime_dependency(%q<right_aws>, [">= 1.10.0"])
      s.add_runtime_dependency(%q<daemons>, [">= 1.0.10"])
      s.add_development_dependency(%q<faker>, [">= 0.3.1"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 2.10.2"])
      s.add_development_dependency(%q<notahat-machinist>, [">= 1.0.3"])
      s.add_development_dependency(%q<rack-test>, [">= 0.4.1"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.7"])
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<sinatra>, [">= 0.9.4"])
      s.add_dependency(%q<activerecord>, [">= 2.3.3"])
      s.add_dependency(%q<json>, [">= 1.1.7"])
      s.add_dependency(%q<rest-client>, [">= 1.0.3"])
      s.add_dependency(%q<right_aws>, [">= 1.10.0"])
      s.add_dependency(%q<daemons>, [">= 1.0.10"])
      s.add_dependency(%q<faker>, [">= 0.3.1"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 2.10.2"])
      s.add_dependency(%q<notahat-machinist>, [">= 1.0.3"])
      s.add_dependency(%q<rack-test>, [">= 0.4.1"])
      s.add_dependency(%q<mocha>, [">= 0.9.7"])
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 0.9.4"])
    s.add_dependency(%q<activerecord>, [">= 2.3.3"])
    s.add_dependency(%q<json>, [">= 1.1.7"])
    s.add_dependency(%q<rest-client>, [">= 1.0.3"])
    s.add_dependency(%q<right_aws>, [">= 1.10.0"])
    s.add_dependency(%q<daemons>, [">= 1.0.10"])
    s.add_dependency(%q<faker>, [">= 0.3.1"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 2.10.2"])
    s.add_dependency(%q<notahat-machinist>, [">= 1.0.3"])
    s.add_dependency(%q<rack-test>, [">= 0.4.1"])
    s.add_dependency(%q<mocha>, [">= 0.9.7"])
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
