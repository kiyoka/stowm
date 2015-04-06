# -*- mode: ruby; -*-
#                                                  Rakefile for Stowm
# Release Engineering
#   1. rake
#      to test
#   2. rake compile && rake build
#      to generate stowm-x.x.x.gem
#   3. install stowm-x.x.x.gem to clean environment and test
#   4. rake release

require 'rake'
require 'bundler/gem_tasks'

task :default => [:test] do
end

task :test do
  sh "/bin/rm -f test.record"
  sh "echo "" > test.log"
  sh "nendo -I ./lib  ./test/util-test.nnd                  >> test.log"
  sh "nendo -I ./lib  ./test/parseutil-test.nnd             >> test.log"
  sh "nendo -I ./lib  ./test/env-test.nnd                   >> test.log"
  sh "nendo -I ./lib  ./test/listutil-test.nnd              >> test.log"
  sh "nendo -I ./lib  ./test/specfile-test.nnd              >> test.log"
  sh "nendo -I ./lib  ./test/makefile-test.nnd              >> test.log"
  sh "cat test.log"
  sh "cat test.record"
  sh "grep ' 0 failed, ' test.record  > /dev/null"
end

task :compile do
  sh "nendo -c ./lib/stowm/env.nnd >       ./lib/stowm/env.nndc"
  sh "nendo -c ./lib/stowm/util.nnd >      ./lib/stowm/util.nndc"
  sh "nendo -c ./lib/stowm/specfile.nnd >  ./lib/stowm/specfile.nndc"
  sh "nendo -c ./lib/stowm/parseutil.nnd > ./lib/stowm/parseutil.nndc"
  sh "nendo -c ./lib/stowm/main.nnd >      ./lib/stowm/main.nndc"
  sh "nendo -c ./lib/stowm/listutil.nnd >  ./lib/stowm/listutil.nndc"
end

task :help do
  sh "./bin/stowm"
end

task :env do
  sh "./bin/stowm env"
end

task :cleanlist do
  sh "rm -f ~/.stowm.db"
  sh "./bin/stowm list"
end

task :list do
  sh "./bin/stowm list git"
end

task :url1 do
  sh "./bin/stowm https://www.kernel.org/pub/software/scm/git/git-2.3.4.tar.xz"
end

task :url2 do
  sh "./bin/stowm ruby-1.7.19-jruby.tar.gz"
end

task :e do
  sh "./bin/stowm e 15"
end

task :d do
  sh "./bin/stowm d 15"
end

task :r do
  sh "./bin/stowm r 15"
end
