class Bio < ApplicationRecord
  belongs_to :cryptopunk
  has_many :biohistories
end
