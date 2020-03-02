# frozen_string_literal: true

module Api
  class ItemsController < ApiController
    before_action -> { doorkeeper_authorize! :public }

    def create
      item = current_resource_owner.items.new(item_data)
      if item.save
        render json: item.to_json, status: :created
      else
        render json: { message: 'Invalid params' }, status: :bad_request
      end
    end

    def find
      item = current_resource_owner.items.find_by!(url: params[:url])
      render json: item.to_json
    end

    private

    def item_data
      {
        url: params.dig(:itemData, :url),
        title: params.dig(:itemData, :title),
        description: params.dig(:itemData, :description),
        image_url: params.dig(:itemData, :imageSrc)
      }
    end
  end
end
