class Admin::UsersController < AdminController

  def index
    puts "$" * 60
    puts params
    puts "$" * 60
    @user = User.all
  end




end
