# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = "jekyll-theme-estrada"
  s.version       = "1.0.0"
  s.license       = "MIT"
  s.authors       = ["Matt Estrada"]
  s.homepage      = "https://github.com/estrada1/estrada1.github.io"
  s.summary       = "A clean, minimal Jekyll theme"

  s.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^((_includes|_layouts|_sass|assets/(css|js|fonts))/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  s.required_ruby_version = ">= 2.4.0"

  s.platform = Gem::Platform::RUBY
  s.add_runtime_dependency "jekyll", "> 3.5", "< 5.0"
  s.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"
end
