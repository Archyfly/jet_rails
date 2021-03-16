class Match < ApplicationRecord
  include Filterable

  has_many :gamers, through: :gamer_achieves
  has_many :gamer_achieves

  scope :order_by_desc, -> (created_at) { order(created_at: :desc) }

end
