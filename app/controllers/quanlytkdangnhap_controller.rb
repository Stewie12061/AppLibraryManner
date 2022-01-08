class QuanlytkdangnhapController < ApplicationController
  def index
    @user = User.all
  end
end
