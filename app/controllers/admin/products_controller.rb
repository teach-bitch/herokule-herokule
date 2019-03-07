class Admin::ProductsController < AdminController


  # Methods omitted
  def index
    
    puts "$" * 60
    puts "PRODUCT ADMIN INDEX"
    puts params
    puts "$" * 60
    @product = Product.all

  end



end
