Gem::Specification.new do |s|
  s.name        = 'temping'
  s.version     = '4.0.0'
  s.authors     = ['John Pignata']
  s.email       = 'john@pignata.com'
  s.homepage    = 'http://github.com/korukids/temping'
  s.summary     = 'Create temporary table-backed ActiveRecord models for use in tests'
  s.license     = 'MIT'

  s.files = ['lib/temping.rb']

  s.add_dependency 'activerecord', '>= 6.1'
  s.add_dependency 'activesupport', '>= 6.1'

  s.add_development_dependency 'pg', '>= 1.1.0'
  s.add_development_dependency 'rake', '>= 10.0.4'
  s.add_development_dependency 'rspec', '>= 3.4.0'
end
