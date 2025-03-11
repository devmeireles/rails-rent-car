class Subscriber < ApplicationRecord
  belongs_to :car
  generates_token_for :unsubscribe
end
