# Lister

## Installation

### Prerequisites

If you're familiar with Docker, that and `docker-compose` are all you'll need.

If not, you'll need a local PostgreSQL installation and Ruby 2.7.2 installed.

### Docker

Run `docker-compose up` to build the containers and bring up the environment.
Then, in a separate terminal, use `docker-compose exec web bundle exec rails
db:setup` to create and migrate the database.

### Local

Ensure PostgreSQL is running. Then, run `bundle` to install all Ruby
dependencies and `yarn` to install JS dependencies. After that, set up the
database with `bundle exec rails db:setup`, then run the app with `bundle exec
rails s`.
