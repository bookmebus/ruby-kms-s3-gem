# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 's3encrypt/version'

Gem::Specification.new do |spec|
  spec.name          = "s3encrypt"
  spec.version       = S3encrypt::VERSION
  spec.authors       = ["Don Mills"]
  spec.email         = ["don.mills@gmail.com"]

  spec.summary       = %q{This Gem encrypts and uploads a file to s3 with a KMS generated key, or the reverse.}
  
  spec.homepage      = "https://github.com/DonMills/ruby-kms-s3-gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
 # if spec.respond_to?(:metadata)
 #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
 # else
 #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
 # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'aws-sdk'
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
