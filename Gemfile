# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

gem 'bcrypt', '~> 3.1.7'
gem 'cssbundling-rails'
gem 'hiredis'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'kredis'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.0'
gem 'redis', '>= 4.0', require: %w[redis redis/connection/hiredis]
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'rack-mini-profiler'
  gem 'web-console'
end
gem 'faker', '~> 2.19'
gem 'pagy', '~> 5.6'
gem 'pg_search', '~> 2.3'
gem 'stimulus_reflex', '= 3.5.0.pre8'

gem 'cable_ready', '~> 5.0.pre8'
