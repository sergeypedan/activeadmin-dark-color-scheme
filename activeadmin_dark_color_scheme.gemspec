# frozen_string_literal: true

require_relative "lib/activeadmin/dark_color_scheme/version"

Gem::Specification.new do |spec|
  spec.name             = "activeadmin_dark_color_scheme"
  spec.version          = Activeadmin::DarkColorScheme::VERSION
  spec.authors          = ["Sergey Pedan"]
  spec.email            = ["sergey.pedan@gmail.com"]
  spec.license          =  "MIT"

  spec.summary          =  "A dark color scheme for ActiveAdmin Ruby CMS"
  spec.description      = <<~HEREDOC
                            #{spec.summary}. This gem provides Sass files that you can include via Sprockets.
                            The dark theme will be automatically applied / turned off according to your system dark / light setting.
                            You can override that config on the browser level if you wish.
                          HEREDOC

  spec.homepage         =  "https://github.com/sergeypedan/activeadmin-dark-color-scheme"
  spec.extra_rdoc_files = ["README.md", "CHANGELOG.md"]
  spec.rdoc_options     = ["--charset=UTF-8"]
  spec.metadata         = { "changelog_uri"     => "#{spec.homepage}/blob/master/CHANGELOG.md",
                            "documentation_uri" => "https://www.rubydoc.info/gems/#{spec.name}",
                            "homepage_uri"      => spec.homepage,
                            "source_code_uri"   => spec.homepage }

  spec.require_paths    = ["app", "lib/activeadmin"]

  spec.bindir           = "exe"
  spec.executables      = []
  spec.files            = Dir.chdir(File.expand_path(__dir__)) do
                            `git ls-files`.split("\n")
                              .reject { |f| %w[bin spec test].any? { |dir| f.start_with? dir } }
                              .reject { |f| f.start_with? "." }
                          end

  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.3")
  # SassC requires Ruby 2.3.3+

  spec.add_runtime_dependency "autoprefixer-rails", ">= 9.1.0"
	spec.add_runtime_dependency "sassc-rails", ">= 2.0.0"

  spec.add_development_dependency "rspec", "~> 3"
  spec.add_development_dependency "term-ansicolor"
  spec.add_development_dependency "yard", ">= 0.9.20", "< 1"
end
