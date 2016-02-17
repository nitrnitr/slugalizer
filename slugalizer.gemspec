Gem::Specification.new do |s|
  s.name        = 'slugalizer'
  s.version     = '0.0.5'
  s.date        = '2015-09-10'
  s.summary     = "One method slug generator."
  s.description = "Generate slugs for your models with this tiny tiny gem."
  s.authors     = ["Martin Aguilar"]
  s.email       = 'martinaguilar@outlook.com'
  s.files       = ["lib/slugalizer.rb", "lib/slugalizer/sugar.rb"]
  s.homepage    =
    'http://rubygems.org/gems/slugalizer'
  s.license       = 'MIT'
  s.add_development_dependency 'bundler', '~> 1.6'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'oktobertest'
  s.add_development_dependency 'oktobertest-contrib'
end
