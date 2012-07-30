# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{yadirect}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Alexander Chaychuk}]
  s.date = %q{2011-06-28}
  s.description = %q{A simple yandex.direct ruby wrapper}
  s.email = %q{a.chaychuk@gmail.com}
  s.extra_rdoc_files = [%q{CHANGELOG}, %q{LICENSE}, %q{README}, %q{lib/api_error.rb}, %q{lib/hash.rb}, %q{lib/hashit.rb}, %q{lib/proxy.rb}, %q{lib/string.rb}, %q{lib/yadirect.rb}]
  s.files = [%q{CHANGELOG}, %q{Gemfile}, %q{Gemfile.lock}, %q{LICENSE}, %q{Manifest}, %q{README}, %q{Rakefile}, %q{lib/api_error.rb}, %q{lib/hash.rb}, %q{lib/hashit.rb}, %q{lib/proxy.rb}, %q{lib/string.rb}, %q{lib/yadirect.rb}, %q{spec/hash_spec.rb}, %q{spec/proxy_spec.rb}, %q{spec/spec_helper.rb}, %q{spec/string_spec.rb}, %q{yadirect.gemspec}]
  s.homepage = %q{http://github.com/sashich/yadirect}
  s.rdoc_options = [%q{--line-numbers}, %q{--inline-source}, %q{--title}, %q{Yadirect}, %q{--main}, %q{README}]
  s.require_paths = [%q{lib}]
  s.rubyforge_project = %q{yadirect}
  s.rubygems_version = %q{1.8.5}
  s.summary = %q{A yandex.direct ruby wrapper}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<curb>, [">= 0"])
    else
      s.add_dependency(%q<curb>, [">= 0"])
    end
  else
    s.add_dependency(%q<curb>, [">= 0"])
  end
end
