# frozen_string_literal: true

module Api
  class MeController < ApiController
    before_action -> { doorkeeper_authorize! :public }

    def index
      render json: current_resource_owner.to_json
    end
  end
end
