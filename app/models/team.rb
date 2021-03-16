class Team < ApplicationRecord
  include Filterable

  has_many :gamers
end
