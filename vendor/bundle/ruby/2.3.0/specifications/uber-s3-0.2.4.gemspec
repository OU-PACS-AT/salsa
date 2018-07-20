# -*- encoding: utf-8 -*-
# stub: uber-s3 0.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "uber-s3".freeze
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Peter Kieltyka".freeze]
  s.date = "2012-07-06"
  s.description = "A simple & very fast S3 client supporting sync / async HTTP adapters".freeze
  s.email = ["peter@nulayer.com".freeze]
  s.homepage = "http://github.com/nulayer/uber-s3".freeze
  s.rubygems_version = "2.6.11".freeze
  s.summary = "A simple & very fast S3 client supporting sync / async HTTP adapters".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>.freeze, ["~> 1.17"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.7.0"])
    else
      s.add_dependency(%q<mime-types>.freeze, ["~> 1.17"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.7.0"])
    end
  else
    s.add_dependency(%q<mime-types>.freeze, ["~> 1.17"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.7.0"])
  end
end
