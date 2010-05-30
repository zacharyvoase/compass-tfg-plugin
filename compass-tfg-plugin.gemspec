#!/usr/bin/env ruby -rubygems
# -*- coding: utf-8 -*-


GEMSPEC = Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')
  
  gem.name               = 'compass-tfg-plugin'
  gem.summary            = 'A Compass-compatible Sass port of the Tiny Fluid Grid system, plus extras.'
  gem.homepage           = 'http://github.com/zacharyvoase/compass-tfg-plugin'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.description        = 'The happy & awesome way to build fluid grid based websites (http://tinyfluidgrid.com/).'
  
  gem.authors            = ['Zachary Voase']
  gem.email              = 'z@zacharyvoase.com'
  
  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(README.md compass-tfg-plugin.gemspec) + Dir['lib/**/*.rb'] + Dir['stylesheets/**/*.scss']
  gem.bindir             = %q(bin)
  gem.executables        = %w()
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false
  
  gem.required_rubygems_version  = Gem::Requirement.new(">= 1.3.6")
  gem.rubygems_version           = "1.3.6"
  gem.add_dependency             'compass', '>= 0.10.0.rc3'
  gem.post_install_message       = nil
end
