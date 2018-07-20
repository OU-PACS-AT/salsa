# -*- encoding: utf-8 -*-
# stub: newrelic_rpm 3.7.3.204 ruby lib

Gem::Specification.new do |s|
  s.name = "newrelic_rpm".freeze
  s.version = "3.7.3.204"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jason Clark".freeze, "Sam Goldstein".freeze, "Jonan Scheffler".freeze, "Ben Weintraub".freeze, "Chris Pine".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDODCCAiCgAwIBAgIBADANBgkqhkiG9w0BAQUFADBCMREwDwYDVQQDDAhzZWN1\ncml0eTEYMBYGCgmSJomT8ixkARkWCG5ld3JlbGljMRMwEQYKCZImiZPyLGQBGRYD\nY29tMB4XDTE0MDIxMjIzMzUzMloXDTE1MDIxMjIzMzUzMlowQjERMA8GA1UEAwwI\nc2VjdXJpdHkxGDAWBgoJkiaJk/IsZAEZFghuZXdyZWxpYzETMBEGCgmSJomT8ixk\nARkWA2NvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANxaTfJVp22V\nJCFhQTS0Zuyo66ZknUwwoVbhuSoXJ0mo9PZSifiIwr9aHmM9dpSztUamDvXesLpP\n8HESyhe3sgpK0z7UXbDmtWZZx43qulx3xTObLQauVZcxP8qqGqvRzdovqXnFe8lN\nsRUnXQjm9kArMI8uHhcU7XvlbQeTtPcjP0U/ZSyKABsJXRamQ/SVCPXqAHXv+OWP\nt4yDB/MrAQFVSoNisyYtB7Af/izqw0/cnUCAOXGQL24l4Ir0dwMd0K6oAnaG93DB\nv6yb30VT5elw40BeIhBsjZP731vRgXIlIKYwhVAlkvRkexAy9kH456Vt0fDBBYka\neE53BhdcguUCAwEAAaM5MDcwCQYDVR0TBAIwADAdBgNVHQ4EFgQUPJxv/VCFdHOH\nlINeV2xQGQhFthEwCwYDVR0PBAQDAgSwMA0GCSqGSIb3DQEBBQUAA4IBAQDRCiPq\n50B4sJN0Gj2T+9g+uXtC845mJD+0BlsAVjLcc+TchxxD3BYeln9c2ErPSIrzZ92Q\nYlwLvw99ksJ5Qa/tAJCUyE3u9JuldalewRi/FHjoGcdhjUErzIyHtNlnCbTMfScz\n5T+r8iUhvt0tcZ0/dQ1LFN8vMizN4Rm6JMXsmkHHxuosllQ9Q14sCYd2ekk2UF0l\n59Jd6iWx3iVmUHSQNXiAdEihcwcx3e71dBNzl6FiR328PzniUjrhoSKzVLQv+JlR\n1fUxkomKs2EL+FYMwnAb+VmNOhv1S+sJhbjZ30PKgz6vLhT6unieCjLk9wGGmlSK\nYjbnvA9qraLLajSj\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2014-03-11"
  s.description = "New Relic is a performance management system, developed by New Relic,\nInc (http://www.newrelic.com).  New Relic provides you with deep\ninformation about the performance of your web application as it runs\nin production. The New Relic Ruby Agent is dual-purposed as a either a\nGem or plugin, hosted on\nhttp://github.com/newrelic/rpm/\n".freeze
  s.email = "support@newrelic.com".freeze
  s.executables = ["mongrel_rpm".freeze, "newrelic_cmd".freeze, "newrelic".freeze, "nrdebug".freeze]
  s.extra_rdoc_files = ["CHANGELOG".freeze, "LICENSE".freeze, "README.md".freeze, "GUIDELINES_FOR_CONTRIBUTING.md".freeze, "newrelic.yml".freeze]
  s.files = ["CHANGELOG".freeze, "GUIDELINES_FOR_CONTRIBUTING.md".freeze, "LICENSE".freeze, "README.md".freeze, "bin/mongrel_rpm".freeze, "bin/newrelic".freeze, "bin/newrelic_cmd".freeze, "bin/nrdebug".freeze, "newrelic.yml".freeze]
  s.homepage = "http://www.github.com/newrelic/rpm".freeze
  s.licenses = ["New Relic".freeze, "MIT".freeze, "Ruby".freeze]
  s.post_install_message = "# New Relic Ruby Agent Release Notes #\n\n## v3.7.3 ##\n\n* Obfuscation for PostgreSQL explain plans\n\n  Fixes an agent bug with PostgreSQL where parameters from the original query\n  could appear in explain plans sent to New Relic servers, even when SQL\n  obfuscation was enabled. Parameters from the query are now masked in explain\n  plans prior to transmission when transaction_tracer.record_sql is set to\n  'obfuscated' (the default setting).\n\n  For more information, see:\n  https://docs.newrelic.com/docs/traces/security-for-postgresql-explain-plans\n\n* More accurate categorization of SQL statements\n\n  Some SQL SELECT statements that were previously being mis-categorized as\n  'SQL - OTHER' will now correctly be tagged as 'SQL - SELECT'. This\n  particularly affected ActiveRecord users using PostgreSQL.\n\n* More reliable Typhoeus instrumentation\n\n  Fixed an issue where an exception raised from a user-specified on_complete\n  block would cause our Typhoeus instrumentation to fail to record the request.\n\n* Fix for Puma 2.8.0 cluster mode (3.7.3.204)\n\n  Puma's 2.8.0 release renamed a hook New Relic used to support Puma's cluster\n  mode.  This resulted in missing data for users running Puma. Thanks Benjamin\n  Kudria for the fix!\n\n* Fix for deployment command bug (3.7.3.204)\n\n  Problems with file loading order could result in `newrelic deployments`\n  failing with an unrecognized command error. This has been fixed.\n\n    See https://github.com/newrelic/rpm/blob/master/CHANGELOG for a full list of\n    changes.\n".freeze
  s.rdoc_options = ["--line-numbers".freeze, "--inline-source".freeze, "--title".freeze, "New Relic Ruby Agent".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "New Relic Ruby Agent".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["= 10.1.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 4.7.5"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 0.13.0"])
      s.add_development_dependency(%q<sdoc-helpers>.freeze, [">= 0"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 2.4.2"])
      s.add_development_dependency(%q<rails>.freeze, ["~> 3.2.13"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<sequel>.freeze, ["~> 3.46.0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<guard>.freeze, ["~> 1.8.3"])
      s.add_development_dependency(%q<guard-minitest>.freeze, [">= 0"])
      s.add_development_dependency(%q<rb-fsevent>.freeze, ["~> 0.9.1"])
    else
      s.add_dependency(%q<rake>.freeze, ["= 10.1.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 4.7.5"])
      s.add_dependency(%q<mocha>.freeze, ["~> 0.13.0"])
      s.add_dependency(%q<sdoc-helpers>.freeze, [">= 0"])
      s.add_dependency(%q<rdoc>.freeze, [">= 2.4.2"])
      s.add_dependency(%q<rails>.freeze, ["~> 3.2.13"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<sequel>.freeze, ["~> 3.46.0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<guard>.freeze, ["~> 1.8.3"])
      s.add_dependency(%q<guard-minitest>.freeze, [">= 0"])
      s.add_dependency(%q<rb-fsevent>.freeze, ["~> 0.9.1"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["= 10.1.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 4.7.5"])
    s.add_dependency(%q<mocha>.freeze, ["~> 0.13.0"])
    s.add_dependency(%q<sdoc-helpers>.freeze, [">= 0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 2.4.2"])
    s.add_dependency(%q<rails>.freeze, ["~> 3.2.13"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<sequel>.freeze, ["~> 3.46.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<guard>.freeze, ["~> 1.8.3"])
    s.add_dependency(%q<guard-minitest>.freeze, [">= 0"])
    s.add_dependency(%q<rb-fsevent>.freeze, ["~> 0.9.1"])
  end
end
