$:.push File.expand_path('lib', __dir__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'service-proxy'
  spec.version     = File.read('VERSION')
  spec.authors     = ['Sephora Asia']
  spec.email       = ['dpiret@sephora.sg']
  spec.homepage    = 'https://github.com/sephora-asia/service-proxy-rails'
  spec.summary     = 'Easily proxy paths in your rails application to other backend services.'
  spec.description = 'Easily proxy paths in your rails application to other backend services.'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com'
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/sephora-asia/service-proxy-rails'
    spec.metadata['github_repo'] = 'ssh://github.com/sephora-asia/service-proxy-rails'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '>= 5.2.3'
  spec.add_dependency 'rack-proxy', '~> 0.6.5'

  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'sqlite3'
end
