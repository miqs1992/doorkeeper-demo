# frozen_string_literal: true

class ItemsController < ApplicationController
  before_action :authenticate_user!

  def show
    @item = current_user.items.find(params[:id])
  end
end
