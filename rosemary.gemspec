# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rosemary/version"

Gem::Specification.new do |s|
  s.name = "rosemary"
  s.version = Rosemary::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Christoph Bünte, Enno Brehm"]
  s.date = Time.now
  s.description = "OpenStreetMap API client for ruby"
  s.email = ["info@christophbuente.de"]
  s.license = 'MIT'
  s.extra_rdoc_files = ["CHANGELOG.md", "LICENSE", "README.md"]
  s.homepage = "https://github.com/sozialhelden/rosemary"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "OpenStreetMap", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "rosemary"
  s.rubygems_version = "1.8.25"

  s.summary = "OpenStreetMap API client for ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  raise "RubyGems 2.0 or newer is required" unless s.respond_to?(:metadata)

  s.add_runtime_dependency(%q<httparty>, [">= 0.14"])
  s.add_runtime_dependency(%q<libxml-ruby>, [">= 2.8.0"])
  s.add_runtime_dependency(%q<builder>, [">= 2.1.2"])
  s.add_runtime_dependency(%q<oauth>, [">= 0.5.0"])
  s.add_runtime_dependency(%q<activemodel>, [">= 3.0.20"])
  s.add_runtime_dependency(%q<htmlentities>)
  s.add_development_dependency(%q<rspec>, [">= 3.2"])
  s.add_development_dependency(%q<webmock>, [">= 1.21"])
  s.add_development_dependency(%q<rake>, [">= 10.4.2"])
  s.add_development_dependency(%q<yard>, [">= 0.8"])
  s.add_development_dependency(%q<redcarpet>, [">= 3.2.3"])
  s.add_development_dependency(%q<codeclimate-test-reporter>)
end
