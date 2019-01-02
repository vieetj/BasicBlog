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
- toastr-rails: Simple javascript toast notifications
- In group development, add gem:
```

group :development do
  gem 'guard', '~> 2.15'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2'
end
```
After add all gems in Gemfile, use `bundle | bundle install` to install all gems