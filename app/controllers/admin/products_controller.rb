class Admin::UsersController < AdminController


  # Methods omitted
  def index
    puts "$" * 60
    puts "USER ADMIN INDEX"
    puts params
    puts "$" * 60
    @user = User.all

  end



end
