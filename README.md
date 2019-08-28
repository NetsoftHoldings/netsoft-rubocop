# netsoft-rubocop

Hubstaff style guides and shared style configs.

## Installation

Add this line to your project Gemfile:

```ruby
group :test, :development do
  gem 'netsoft-rubocop', github: 'NetsoftHoldings/netsoft-rubocop', tag: 'v1.0.0'
end
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  netsoft-rubocop:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

You do not need to include rubocop directly in your application's dependencies.
netsoft-rubocop will include a specific version of `rubocop`, `rubocop-performance`,
`rubocop-rails` and `rubocop-rspec` that is shared across all projects.

## Releasing

1. Update version.rb file accordingly.
2. Tag the release: `git tag vVERSION`
3. Push changes: `git push --tags`
