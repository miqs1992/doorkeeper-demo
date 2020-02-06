# frozen_string_literal: true

module Api
  module Auth
    class WorkspacesController < ApiController
      def show
        company = Company.find_by!(domain: params[:id])
        render json: company.to_json
      end
    end
  end
end
