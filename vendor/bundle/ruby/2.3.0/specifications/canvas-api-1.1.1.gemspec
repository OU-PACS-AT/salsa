# -*- encoding: utf-8 -*-
# stub: canvas-api 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "canvas-api".freeze
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Instructure".freeze]
  s.date = "2014-05-15"
  s.extra_rdoc_files = ["LICENSE".freeze]
  s.files = ["LICENSE".freeze]
  s.homepage = "http://github.com/whitmer/canvas-api".freeze
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Ruby library for accessing the Canvas API".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<typhoeus>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<ruby-debug>.freeze, [">= 0"])
    else
      s.add_dependency(%q<json>.freeze, [">= 0"])
      s.add_dependency(%q<typhoeus>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 0"])
      s.add_dependency(%q<ruby-debug>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<json>.freeze, [">= 0"])
    s.add_dependency(%q<typhoeus>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<ruby-debug>.freeze, [">= 0"])
  end
end
