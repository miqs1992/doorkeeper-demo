# frozen_string_literal: true

class Company < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :domain, presence: true, uniqueness: true
  validates :logo_url, presence: true
  validates :banner_url, presence: true

  def to_json(*_args)
    {
      name: name,
      domain: domain,
      bannerUrl: banner_url,
      logoUrl: logo_url
    }
  end
end
