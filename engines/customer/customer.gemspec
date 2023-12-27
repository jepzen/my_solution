require_relative "lib/customer/version"

Gem::Specification.new do |spec|
  spec.name        = "customer"
  spec.version     = Customer::VERSION
  spec.authors     = ["Jeppe B. Svendsen"]
  spec.email       = ["jeppesvendsen@gmail,com"]
  spec.homepage    = "http://test.dk"
  spec.summary     = "Summary of Customer."
  spec.description = "Description of Customer."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://test.dk"
  spec.metadata["changelog_uri"] = "http://test.dk"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.8"
end
