# -*- encoding: utf-8 -*-
# stub: que 0.13.0 ruby lib

Gem::Specification.new do |s|
  s.name = "que".freeze
  s.version = "0.13.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Hanks".freeze]
  s.date = "2017-06-08"
  s.description = "A job queue that uses PostgreSQL's advisory locks for speed and reliability.".freeze
  s.email = ["christopher.m.hanks@gmail.com".freeze]
  s.executables = ["que".freeze]
  s.files = ["bin/que".freeze]
  s.homepage = "https://github.com/chanks/que".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "A PostgreSQL-based Job Queue".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
  end
end
