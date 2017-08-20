# -*- encoding: utf-8 -*-
# stub: activeresource 5.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "activeresource"
  s.version = "5.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Heinemeier Hansson"]
  s.date = "2017-05-05"
  s.description = "REST on Rails. Wrap your RESTful web app with Ruby classes and work with them like Active Record models."
  s.email = "david@loudthinking.com"
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc"]
  s.homepage = "http://www.rubyonrails.org"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2")
  s.rubygems_version = "2.5.1"
  s.summary = "REST modeling framework (part of Rails)."

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["< 6", ">= 5.0"])
      s.add_runtime_dependency(%q<activemodel>, ["< 6", ">= 5.0"])
      s.add_runtime_dependency(%q<activemodel-serializers-xml>, ["~> 1.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0.13.0"])
    else
      s.add_dependency(%q<activesupport>, ["< 6", ">= 5.0"])
      s.add_dependency(%q<activemodel>, ["< 6", ">= 5.0"])
      s.add_dependency(%q<activemodel-serializers-xml>, ["~> 1.0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0.13.0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["< 6", ">= 5.0"])
    s.add_dependency(%q<activemodel>, ["< 6", ">= 5.0"])
    s.add_dependency(%q<activemodel-serializers-xml>, ["~> 1.0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0.13.0"])
  end
end
