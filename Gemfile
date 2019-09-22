source "https://rubygems.org"
git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

ruby '2.6.3'
gem 'rails', '5.2.2.1'

#ミドル
gem 'pg'
gem 'puma', '~> 3.7'

#環境変数
gem 'dotenv-rails'

#フロントエンド系
gem 'bootstrap'
gem 'bootsnap', require: false
gem 'coffee-rails', '~> 4.2'
gem 'devise-bootstrap-views'
gem 'devise-i18n'
gem 'devise-i18n-views'
gem 'haml-rails'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'kaminari'
gem 'kaminari-bootstrap'
gem 'rails-i18n'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

#認証系
gem 'devise'

#日付
gem 'validates_timeliness'

group :development, :test do
    #デバッグ系
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'pry-stack_explorer'

  #静的解析
  gem 'haml_lint'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'

  #テスト
  gem 'capybara', '~> 2.13'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'spring-commands-rspec'
  gem 'webdrivers'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'

  #メールテスト
  gem 'letter_opener_web'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
