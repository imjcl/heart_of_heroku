lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heart_of_heroku/version'

Gem::Specification.new do |s|
  s.name        = "heart_of_heroku"
  s.version     = HeartOfHeroku::VERSION
  s.date        = "2014-08-17"
  s.summary     = "The Heart of Heroku"
  s.description = "Get into the heart of Heroku's Platform API"
  s.authors     = ["Arbind Thakur", "Steven Hsieh", "Jay Liu"]
  s.email       = "jaycliu@gmail.com"   
  s.license     = "MIT"
  s.homepage    = "https://github.com/imjcl/heart_of_heroku"

  # Manifest
  s.files       = `git ls-files`.split("\n")


  s.add_runtime_dependency "json", "~> 1.8"
  s.add_runtime_dependency "rest-client", "~> 1.7"
end