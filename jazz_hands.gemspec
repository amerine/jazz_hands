# -*- encoding: utf-8 -*-

require File.expand_path('../lib/jazz_hands/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'jazz_hands'
  gem.version = JazzHands::VERSION
  gem.author = 'Gopal Patel'
  gem.email = 'nixme@stillhope.com'
  gem.license = 'MIT'
  gem.homepage = 'https://github.com/nixme/jazz_hands'
  gem.summary = 'Exercise those fingers. Pry-based enhancements for the default Rails console.'
  gem.description =
    'Spending hours in the rails console? Spruce it up and show off those hard-working hands! jazz_hands replaces IRB with Pry, improves output through awesome_print, and has some other goodies up its sleeves.'

  gem.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']

  # Dependencies
  gem.required_ruby_version = '>= 2.0.0'
  gem.add_runtime_dependency 'pry', '~> 0.14.0'
  gem.add_runtime_dependency 'pry-rails', '~> 0.3.9'
  gem.add_runtime_dependency 'pry-doc', '~> 1.4.0'
  gem.add_runtime_dependency 'pry-git', '~> 0.2'
  gem.add_runtime_dependency 'unicode-display_width', '>= 1.1'
  gem.add_runtime_dependency 'pry-remote', '~> 0.1'
  # gem.add_runtime_dependency 'pry-byebug', '~> 3.9.0'
  gem.add_runtime_dependency 'hirb', '~> 0.7'
  gem.add_runtime_dependency 'pry-coolline', '~> 0.2'
  gem.add_runtime_dependency 'amazing_print', '>= 1.4.0'
  gem.add_runtime_dependency 'railties', '>= 3.0', '< 7.2'
end
