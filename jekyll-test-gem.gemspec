VERSION = '2.1.1'
RELEASE_VERSION = case
    when ENV['TRAVIS'] && ENV['TRAVIS_BRANCH'].match(/^master$/i) then "#{VERSION}"
    when ENV['TRAVIS'] && ENV['TRAVIS_BRANCH'].match(/^develop$/i) then "#{VERSION}-#{ENV['TRAVIS_BRANCH']}.#{ENV['TRAVIS_BUILD_NUMBER']}"
    else "#{VERSION}-local"
end

Gem::Specification.new do |s|
  s.name        = 'jekyll-test-gem'
  s.version     = RELEASE_VERSION.to_s
  s.summary     = 'Hypertext Publication System for Templated Resource Rendering'
  s.description = 'Generate static sites with Jekyll based on RDF data'
  s.authors     = ['Elias Saalmann', 'Christian Frommert', 'Simon Jakobi', 'Arne Jonas Präger', 'Maxi Bornmann', 'Georg Hackel', 'Eric Füg', 'Sebastian Zänker', 'Natanael Arndt']
  s.email       = 'arndt@informatik.uni-leipzig.de'
  s.files       = Dir['lib/**/*.rb']
  s.homepage    = 'https://github.com/white-gecko/jekyll-rdf'
  s.license     = 'MIT'
  s.add_runtime_dependency 'jekyll',              '~> 3.5'
end
