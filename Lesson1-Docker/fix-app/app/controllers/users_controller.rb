class UsersController < ApplicationController
  def index
    @users = User.all
    return
  end
end
