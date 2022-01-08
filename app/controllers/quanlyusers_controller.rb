class QuanlyusersController < ApplicationController
  # GET /quanlyusers or /quanlyusers.json
  def index
    @user = User.all
  end


end
