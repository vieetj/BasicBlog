## **Basic Blog** ##

A Blog to demonstrate Ruby on Rails with Posts and Comments

**Feattures**

- Posts: Create, Read, Update, Destroy
- Comments: Create, Read, Destroy

**Gems for project**
- better_errors : Provides a better error page for Rails
- bulma-rails: CSS Framework based on Flexbox
- simple_form: Make form easy with Rails
- guard: Command line tool to easily handle events on file system modifications
- guard-livereload: Automatically reloads your browser when 'view' files are modified
- In group development, add gem:
```

group :development do
  gem 'guard', '~> 2.15'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2'
end
```
After add all gems in Gemfile, use `bundle | bundle install` to install all gems

1. Step 1 - Working with Simple Form

Open Terminal, run command: `rails generate simple_form:install`

2. Step 2 - Working with Guard

- Open Terminal, run command: `guard init livereload` to generate an Guardfile
- Install extension livereload for your browser: You can reference at: [LiveReload](http://livereload.com/extensions/)
- After install extension, run Guard through Bundler with: `bundle exec guard`

3. Step 3 - Create Posts controller

- Using command: `rails generate | g controller <name_controller> action1 action2 ... actionN` 
- Create first view: index.html.erb: `app/view/posts/index.html.erb`
- Change root of project: `root 'posts#index'`
- Add resources for project: `resources :posts`