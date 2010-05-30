# Zack's Skeleton Rakefile.
# http://github.com/zacharyvoase/rakefile

$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), 'lib')))

require 'rubygems'
require 'shellwords'

# ---- Helpers ----

def scope(path)
  File.join(File.dirname(__FILE__), path)
end

# ---- Packaging ----

require 'rake/gempackagetask'
abort "Gemspec file not found" unless gemspec_file = Dir['*.gemspec'].first
load gemspec_file
Rake::GemPackageTask.new(GEMSPEC) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end

namespace :bump do
  def get_current_version
    File.read("VERSION").split(".").map(&:to_i)
  end
  
  def write_current_version(ver)
    File.open("VERSION", "w") { |f| f << ver.join(".") }
    FileUtils.touch("VERSION")
    sh ["git", "commit", "-m", "Bumped to v#{ver.join(".")}.", "VERSION"].shelljoin
    sh ["git", "tag", "v#{ver.join(".")}"].shelljoin
  end
  
  desc "Increment the bugfix version"
  task :bug do
    ver = get_current_version
    ver[2] += 1
    write_current_version(ver)
  end
  
  desc "Increment the minor version"
  task :min do
    ver = get_current_version
    ver[1] += 1
    ver[2] = 0
    write_current_version(ver)
  end
  
  desc "Increment the major version"
  task :maj do
    ver = get_current_version
    ver[0] += 1
    ver[1] = 0
    ver[2] = 0
    write_current_version(ver)
  end
end

# ---- TODO ----

desc "Retrieve a list of TODO/FIXME/XXX comments in your Ruby code"
task :todo do
  pattern = /(TODO|FIXME|XXX)/i
  Dir['**/*.rb'].each do |file|
    File.open(file).readlines.each_with_index do |line, lineno|
      puts "#{file}:#{lineno + 1}:#{line}" if line =~ pattern
    end
  end
end
