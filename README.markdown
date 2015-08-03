Rails Skeleton
==============

A cleaner Rails skeleton for bootstraping new projects.

### Gems

- `rspec` for testing.
- `pry` for debugging.
- `fabrication` for test fixtures.
- `database_rewinder` to clean up test records.
- `timecop` for time traveling.
- `bourbon` for SASS library.
- `sprockets-es6` for next JavaScript generation.

### Options

- `time_zone` option is set to `Brasilia`.
- `default_locale` option is set to `pt-BR`.
- Disabled some generators (see application.rb)

### Middleware

`Rack::Lock`, `Rack::ETag` and `ActionDispatch::ParamsParser` have been deleted.

### and more..

- normalize.scss
- stripped comments.
- `app/models/concerns` and `app/controllers/concerns` directories removed.
- `db/seeds.rb` removed.
