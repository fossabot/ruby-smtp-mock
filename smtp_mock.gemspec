# frozen_string_literal: true

require_relative 'lib/smtp_mock/version'

Gem::Specification.new do |spec|
  spec.name          = 'smtp_mock'
  spec.version       = SmtpMock::VERSION
  spec.authors       = ['Vladislav Trotsenko']
  spec.email         = ['admin@bestweb.com.ua']

  spec.summary       = %(smtp_mock)
  spec.description   = %(💎 Ruby SMTP mock. Mimic any SMTP server behaviour for your test environment.)

  spec.homepage      = 'https://github.com/mocktools/ruby-smtp-mock'
  spec.license       = 'MIT'

  spec.metadata = {
    'homepage_uri' => 'https://github.com/mocktools/ruby-smtp-mock',
    'changelog_uri' => 'https://github.com/mocktools/ruby-smtp-mock/blob/master/CHANGELOG.md',
    'source_code_uri' => 'https://github.com/mocktools/ruby-smtp-mock',
    'documentation_uri' => 'https://github.com/mocktools/ruby-smtp-mock/blob/master/README.md',
    'bug_tracker_uri' => 'https://github.com/mocktools/ruby-smtp-mock/issues'
  }

  spec.required_ruby_version = '>= 2.5.0'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = %w[smtp_mock]
  spec.require_paths = %w[lib]
  spec.post_install_message = 'smtpmock is required system dependency. For more details run: `bundle exec smtp_mock -h`'

  spec.add_runtime_dependency 'dry-struct', '~> 1.4'

  spec.add_development_dependency 'ffaker', '~> 2.21'
  spec.add_development_dependency 'net-smtp', '~> 0.3.2' if ::RUBY_VERSION >= '3.1.0'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.11'
end
