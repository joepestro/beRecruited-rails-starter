namespace :populate do
  desc "Initially seed the database"
  task :initial => :environment do
    # TODO: Parse users from API
    # http://br-interview-api.heroku.com/users
    
    # TODO: Parse teams from API
    # http://br-interview-api.heroku.com/teams
    
    # TODO: Parse favorites from API
    # http://br-interview-api.heroku.com/favorites
  end
end
