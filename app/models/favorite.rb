class Favorite < ActiveRecord::Base
  # TODO: Define the relationship to users and/or teams

  def self.top(team, limit = TOP_LIMIT)
    # TODO: Given a team, return the top n users
  end
end
