# coding: utf-8
# frozen_string_literal: true

require_relative "lib/rails/dom/testing/version"

Gem::Specification.new do |spec|
  spec.name          = "rails-dom-testing"
  spec.version       = Rails::Dom::Testing::VERSION
  spec.authors       = ["Rafael Mendonça França", "Kasper Timm Hansen"]
  spec.email         = ["rafaelmfranca@gmail.com", "kaspth@gmail.com"]
  spec.summary       = "Dom and Selector assertions for Rails applications"
  spec.description   = "This gem can compare doms and assert certain elements exists in doms using Nokogiri."
  spec.homepage      = "https://github.com/rails/rails-dom-testing"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.5.0"

  spec.files         = Dir["lib/**/*", "README.md", "MIT-LICENSE", "CHANGELOG.md"]
  spec.test_files    = Dir["test/**/*"]
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport",  ">= 5.0.0"
  spec.add_dependency "minitest"
  spec.add_dependency "nokogiri", ">= 1.6"

  spec.add_development_dependency "rake"
end
