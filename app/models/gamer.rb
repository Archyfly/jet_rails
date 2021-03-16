class Gamer < ApplicationRecord
  include Filterable

  belongs_to :team
  has_many :matches
  #has_many :achieves, through: :gamer_achieves
  has_and_belongs_to_many :achieves, join_table: :gamer_achieves


end
