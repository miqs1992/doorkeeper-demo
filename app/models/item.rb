# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :user

  validates :url, presence: true, uniqueness: { scope: :user_id }
end
