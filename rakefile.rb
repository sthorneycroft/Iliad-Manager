#!/usr/bin/env ruby -wKU

require 'rake/testtask'

#test task
Rake::TestTask.new('test') do |t|
  t.pattern= 'test/**/tc_*.rb'
  t.warning = true
end

desc "Build the bridge"
task :build_bridge do
  puts "Bridge built"
end

desc "Walk the bridge"
task :walk_bridge => [:build_bridge] do
  puts "Walked bridge"
end

task :default => [:walk_bridge]
  
