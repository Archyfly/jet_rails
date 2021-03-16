class GamerAchieve < ApplicationRecord
  include Filterable

  belongs_to :match
  belongs_to :gamer
  belongs_to :achieve

end
