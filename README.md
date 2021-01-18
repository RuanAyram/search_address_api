# README

## Tools

| Tool  | Purpose |
| :---: |:-------:|
| [Postman](https://www.getpostman.com/) | Requests in the api |


## Gems

| Gems  | Purpose |
| :---: |:-------:|
| [Rspec](https://github.com/rspec/rspec-rails) | Default tests |
| [Rubocop](https://github.com/rubocop-hq/rubocop) | Static code analyzer and formatter |
| [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails) | Setting up Ruby objects as test data |
| [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers) | Simple one-liner tests |
|  |  |
| General | Version |
| Ruby  | 2.7.1 |
| Rails | 6.0.3.2 |


## Getting started

Clone the repository
```
git clone git@github.com:RuanAyram/search_address_api.git
```

#### Edit `config/database.yml`, if necessary

Enter in the folder, then run these commands to install gems, create a database and populate, then run api locally
```
cd search_address_api

bundle install

rails db:create && rails db:migrate && rails db:seed

rails s
```

## My API Endpoints

### Address

| Method + url | Output |
| :----------- |:-------|
| GET {base_url}/api/v1/address/{cep} | Returns a list params according API 'http://cep.la/' |

## For test, run:

```
 $ bundle exec rspec
```
