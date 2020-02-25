# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :user

  validates :url, presence: true, uniqueness: { scope: :user_id }

  def to_json(*_args)
    {
      id: id,
      url: url,
      title: title,
      description: description,
      applicationUrl: Rails.application.routes.url_helpers.item_url(id: id)
    }
  end
end
