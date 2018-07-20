# -*- encoding: utf-8 -*-
# stub: net-ssh 2.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "net-ssh".freeze
  s.version = "2.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jamis Buck".freeze, "Delano Mandelbaum".freeze]
  s.date = "2013-09-11"
  s.description = "Net::SSH: a pure-Ruby implementation of the SSH2 client protocol. It allows you to write programs that invoke and interact with processes on remote servers, via SSH2.".freeze
  s.email = "net-ssh@solutious.com".freeze
  s.extra_rdoc_files = ["LICENSE.txt".freeze, "README.rdoc".freeze]
  s.files = ["LICENSE.txt".freeze, "README.rdoc".freeze]
  s.homepage = "https://github.com/net-ssh/net-ssh".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "net-ssh".freeze
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Net::SSH: a pure-Ruby implementation of the SSH2 client protocol.".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    else
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_dependency(%q<mocha>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
  end
end
