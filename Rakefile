#!/usr/bin/env rake

# https://github.com/turboladen/tailor
require 'tailor/rake_task'
Tailor::RakeTask.new do |task|
  # task.tailor_opts = %w(--max-line-length 140)
  task.file_set('attributes/**/*.rb', "attributes") do |style|
    style.max_line_length 100, level: :warn
  end
  task.file_set('definitions/**/*.rb', "definitions")
  task.file_set('libraries/**/*.rb', "libraries")
  task.file_set('metadata.rb', "metadata")
  task.file_set('providers/**/*.rb', "providers")
  task.file_set('recipes/**/*.rb', "recipes") do |style|
    style.max_line_length 100, level: :warn
  end
  task.file_set('resources/**/*.rb', "resources")
  # task.file_set('templates/**/*.erb', "templates")
end

desc "Runs foodcritic linter"
task :foodcritic do
  Rake::Task[:prepare_sandbox].execute

  if Gem::Version.new("1.9.2") <= Gem::Version.new(RUBY_VERSION.dup)
    sh "foodcritic --epic-fail any --tags ~lwrp #{sandbox_path}"
  else
    puts "WARN: foodcritic run is skipped as Ruby #{RUBY_VERSION} is < 1.9.2."
  end
end

desc "Runs knife cookbook test"
task :knife do
  Rake::Task[:prepare_sandbox].execute

  sh "bundle exec knife cookbook test cookbook -o #{sandbox_path}/../"
end

task :prepare_sandbox do
  files = %w{*.md *.rb attributes definitions files libraries providers
              recipes resources templates}

  rm_rf sandbox_path
  mkdir_p sandbox_path
  cp_r Dir.glob("{#{files.join(',')}}"), sandbox_path
end

task :default => [:knife, :tailor, :foodcritic]

private

def sandbox_path
  File.join(File.dirname(__FILE__), %w(tmp cookbooks cookbook))
end
