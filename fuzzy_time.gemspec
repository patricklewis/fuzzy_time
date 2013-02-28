Gem::Specification.new do |s|
  s.name        = 'fuzzy_time'
  s.version     = '1.1'
  s.summary     = "Human-readable time formatting for Ruby."
  s.description = "Extends Ruby's Time class with a new fuzzy method that returns time in a human-readable format."
  s.authors     = ["Patrick Lewis"]
  s.email       = 'get@patricklewis.org'
  s.files       = ["lib/fuzzy_time.rb"]
  s.homepage    = 'https://github.com/patricklewis/fuzzy_time'
  s.license     = 'MIT'
  s.add_development_dependency 'rspec'
end
