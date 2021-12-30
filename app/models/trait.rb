class Trait < ApplicationRecord
  has_many :cryptopunks, through: :punktraits
  has_many :punktraits
end
