Instructions
============

The problem with Bitmaker's repo is that it requires a version of RSpec greater than 2.0. However, with the release of RSpec 3.0 (which includes *breaking* changes), the Bitmaker repo will attempt (and fail) to use RSpec 3.0.

**Follow the steps below to get things working.**

1. After having cloned the repo, run `bundle install` at the root of this directory.
2. Run `bundle exec rake` whenever the steps of the assignment require you to run `rake`.



What These 2 Steps Do
---------------------

There's a Ruby gem called `bundler`, which allows you to install gems per-project, and only specific version numbers. In the `Gemfile` file, you'll notice that it says: `gem 'rspec', '~>2.0'`.

When you run `bundle install`, it goes to locally (for the directory) install the RSpec version 2.X, where X is the latest version available.

When you run `bundle exec rake`, it runs the locally-installed version of `rake`, whereas just running `rake` will run the globally-installed version of `rake`.
