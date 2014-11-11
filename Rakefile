# -*- mode: ruby; -*-
#                                                  Rakefile for Stowm
# Release Engineering
#   1. rake
#      to test
#   2. rake build
#      to generate stowm-x.x.x.gem
#   3. install stowm-x.x.x.gem to clean environment and test
#   4. rake release
#   5. gem push pkg/stowm-x.x.x.gem

require 'rake'
require 'bundler/gem_tasks'
require 'jeweler2'

task :default => [:test] do
end

task :test do
  sh "/bin/rm -f test.record"
  sh "echo "" > test.log"
  sh "nendo -I ./lib  ./test/util-test.nnd                  >> test.log"
  sh "nendo -I ./lib  ./test/parseutil-test.nnd             >> test.log"
  sh "nendo -I ./lib  ./test/env-test.nnd                   >> test.log"
  sh "cat test.log"
  sh "cat test.record"
  sh "grep ' 0 failed, ' test.record  > /dev/null"
end

task :go do
  sh "nendo -I ./lib ./bin/stowm"
end

task :golist do
  sh "nendo -I ./lib ./bin/stowm list"
end
