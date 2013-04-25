class UserController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@pins = @user.pins(params[:page]).per_page(20)
  end
end
