# -*- encoding: utf-8 -*-
# stub: mime-types 1.24 ruby lib

Gem::Specification.new do |s|
  s.name = "mime-types".freeze
  s.version = "1.24"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Austin Ziegler".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDNjCCAh6gAwIBAgIBADANBgkqhkiG9w0BAQUFADBBMQ8wDQYDVQQDDAZhdXN0\naW4xGTAXBgoJkiaJk/IsZAEZFglydWJ5Zm9yZ2UxEzARBgoJkiaJk/IsZAEZFgNv\ncmcwHhcNMTMwMjA0MDMzMzI3WhcNMTQwMjA0MDMzMzI3WjBBMQ8wDQYDVQQDDAZh\ndXN0aW4xGTAXBgoJkiaJk/IsZAEZFglydWJ5Zm9yZ2UxEzARBgoJkiaJk/IsZAEZ\nFgNvcmcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC2mPNf4L37GhKI\nSPCYsvYWXA2/R9u5+pyUnbJ2R1o2CiRq2ZA/AIzY6N3hGnsgoWnh5RzvgTN1Lt08\nDNIrsIG2VDYk/JVt6f9J6zZ8EQHbznWa3cWYoCFaaICdk7jV1n/42hg70jEDYXl9\ngDOl0k6JmyF/rtfFu/OIkFGWeFYIuFHvRuLyUbw66+QDTOzKb3t8o55Ihgy1GVwT\ni6pkDs8LhZWXdOD+921l2Z1NZGZa9KNbJIg6vtgYKU98jQ5qr9iY3ikBAspHrFas\nK6USvGgAg8fCD5YiotBEvCBMYtfqmfrhpdU2p+gvTgeLW1Kaevwqd7ngQmFUrFG1\neUJSURv5AgMBAAGjOTA3MAkGA1UdEwQCMAAwHQYDVR0OBBYEFAtJKMp6YYNqlgR3\n9TiZLWqvLagSMAsGA1UdDwQEAwIEsDANBgkqhkiG9w0BAQUFAAOCAQEApTPkvDm8\n7gJlUT4FfumXPvtuqP67LxUtGE8syvR0A4As+0P/wylLJFUOsGTTdZYtThhxCSJG\n+7KG2FfIcH4Zz2d97arZGAzBoi8iPht2/UtSl1fCcUI5vmJa1MiXZT2oqdW7Wydq\nrAZcBPlrYYuiwtGI0yqIOgBfXSZCWWsJsuyTKELep6mCLgz0YZUfmvKr8W/Ab3ax\nDuLzH92LSRjZJyjyAUpw/Vc2rM4giiP5jtByrb1Y1dGnQhHTMHf1GfucWm7Nw/V9\ntwEPVw8+0f88JQucxOTmTF1NbLFpiRwQUZ1zoZbNg2e7mShc/eexnVLWKFKxRoP6\nKPj3WoD+spB8fA==\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2013-08-14"
  s.description = "This library allows for the identification of a file's likely MIME content\ntype. This is release 1.24, adding and updating a few MIME types and fixing\nsome issues with documentation.\n\nMIME types are used in MIME-compliant communications, as in e-mail or HTTP\ntraffic, to indicate the type of content which is transmitted. MIME::Types\nprovides the ability for detailed information about MIME entities (provided as\na set of MIME::Type objects) to be determined and used programmatically. There\nare many types defined by RFCs and vendors, so the list is long but not\ncomplete; don't hesitate to ask to add additional information. This library\nfollows the IANA collection of MIME types (see below for reference).\n\nMIME::Types for Ruby was originally based on MIME::Types for Perl by Mark\nOvermeer, copyright 2001 - 2009. As of version 1.15, the data format for the\nMIME::Type list has changed and the synchronization will no longer happen.\n\nMIME::Types is built to conform to the MIME types of RFCs 2045 and 2231. It\ntracks the {IANA registry}[http://www.iana.org/assignments/media-types/]\n({ftp}[ftp://ftp.iana.org/assignments/media-types]) with some unofficial types\nadded from the {LTSW collection}[http://www.ltsw.se/knbase/internet/mime.htp]\nand added by the users of MIME::Types.".freeze
  s.email = ["austin@rubyforge.org".freeze]
  s.extra_rdoc_files = ["Contributing.rdoc".freeze, "History.rdoc".freeze, "Licence.rdoc".freeze, "Manifest.txt".freeze, "README.rdoc".freeze, "docs/COPYING.txt".freeze, "docs/artistic.txt".freeze]
  s.files = ["Contributing.rdoc".freeze, "History.rdoc".freeze, "Licence.rdoc".freeze, "Manifest.txt".freeze, "README.rdoc".freeze, "docs/COPYING.txt".freeze, "docs/artistic.txt".freeze]
  s.homepage = "http://mime-types.rubyforge.org/".freeze
  s.licenses = ["MIT".freeze, "Artistic 2.0".freeze, "GPL-2".freeze]
  s.rdoc_options = ["--main".freeze, "README.rdoc".freeze]
  s.rubyforge_project = "mime-types".freeze
  s.rubygems_version = "2.6.11".freeze
  s.summary = "This library allows for the identification of a file's likely MIME content type".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>.freeze, [">= 2.0.4"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<hoe-bundler>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<hoe-doofus>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-gemspec2>.freeze, ["~> 1.1"])
      s.add_development_dependency(%q<hoe-git>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<hoe-rubygems>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-travis>.freeze, ["~> 1.2"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<hoe>.freeze, ["~> 3.7"])
    else
      s.add_dependency(%q<rubyforge>.freeze, [">= 2.0.4"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 4.0"])
      s.add_dependency(%q<hoe-bundler>.freeze, ["~> 1.2"])
      s.add_dependency(%q<hoe-doofus>.freeze, ["~> 1.0"])
      s.add_dependency(%q<hoe-gemspec2>.freeze, ["~> 1.1"])
      s.add_dependency(%q<hoe-git>.freeze, ["~> 1.5"])
      s.add_dependency(%q<hoe-rubygems>.freeze, ["~> 1.0"])
      s.add_dependency(%q<hoe-travis>.freeze, ["~> 1.2"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<hoe>.freeze, ["~> 3.7"])
    end
  else
    s.add_dependency(%q<rubyforge>.freeze, [">= 2.0.4"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 4.0"])
    s.add_dependency(%q<hoe-bundler>.freeze, ["~> 1.2"])
    s.add_dependency(%q<hoe-doofus>.freeze, ["~> 1.0"])
    s.add_dependency(%q<hoe-gemspec2>.freeze, ["~> 1.1"])
    s.add_dependency(%q<hoe-git>.freeze, ["~> 1.5"])
    s.add_dependency(%q<hoe-rubygems>.freeze, ["~> 1.0"])
    s.add_dependency(%q<hoe-travis>.freeze, ["~> 1.2"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<hoe>.freeze, ["~> 3.7"])
  end
end
