# Harvest Tracker

Welcome to the Harvest Tracker app! We're glad you're here!

The goal of this app is to improve the gardening experience for all.

Whether it's a small plot or acres of plants and crops, the aim here is to create a social interface for gardeners.

The average user will be able to:

- Create an account
- Add their property
- List any plots they're using for gardening/crops
- Catalog all the crops/plants they have on their property
- Create a visualization of when their producing plants are ready for harvest
- View other users plants and plots

# Gems added

- Devise
- CanCanCan
- Cypress-on-Rails
- Sidekiq
- Faraday
- Rspec-rails
- StandardRb
- View_component
- Faker

# How to setup/run this app locally

- git clone
- cd into `harvestTracker`
- `bundle`
- `rails db:{create,migrate}`
- `bundle exec rake csv_load:populate_hardiness_zones` (will take about 1 minute)
- `rails s`
- navigate to `localhost:5555`
