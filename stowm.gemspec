# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "stowm"

Gem::Specification.new do |spec|
  spec.name = "stowm"
  spec.version = Stowm::VERSION

  spec.required_rubygems_version = Gem::Requirement.new(">= 0") if spec.respond_to? :required_rubygems_version=
  spec.require_paths = ["lib"]
  spec.authors = ["Kiyoka Nishiyama"]
  spec.description = "Stowm is a stow manager."
  spec.email = "kiyoka@sumibi.org"
  spec.executables = ["stowm"]
  spec.extra_rdoc_files = [
    "README"
  ]
  spec.files = [
    "README",
    "bin/stowm",
    "lib/stowm",
    "lib/stowm/parseutil.nnd",
    "lib/stowm/env.nnd",
    "lib/stowm/util.nnd",
    "lib/stowm/main.nnd",
    "lib/stowm/version.rb",
    "lib/stowm.rb"
  ]
  spec.homepage = "http://github.com/kiyoka/stowm"
  spec.licenses = ["New BSD"]
  spec.summary  = "Stowm is a stow manager."
end

