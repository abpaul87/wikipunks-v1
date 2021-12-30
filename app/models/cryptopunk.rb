class Cryptopunk < ApplicationRecord
  has_many :traits, through: :punktraits
  has_one :bios
  has_many :punktraits
end
