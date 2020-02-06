# frozen_string_literal: true

module Api
  module Auth
    class WorkspacesController < ApplicationController
      def show
        company = Company.find_by(domain: params[:id])
        return render json: company.to_json if company

        render json: { message: 'not found' }, status: :not_found
      end
    end
  end
end
