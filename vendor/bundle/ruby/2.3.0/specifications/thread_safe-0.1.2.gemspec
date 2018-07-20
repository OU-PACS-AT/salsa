# -*- encoding: utf-8 -*-
# stub: thread_safe 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "thread_safe".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Charles Oliver Nutter".freeze]
  s.date = "2013-07-24"
  s.description = "Thread-safe collections and utilities for Ruby".freeze
  s.email = ["headius@headius.com".freeze]
  s.homepage = "https://github.com/headius/thread_safe".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "A collection of data structures and utilities to make thread-safe programming in Ruby easier".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<atomic>.freeze, [">= 0"])
    else
      s.add_dependency(%q<atomic>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<atomic>.freeze, [">= 0"])
  end
end
