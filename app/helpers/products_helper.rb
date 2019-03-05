module ProductsHelper
  def category_helper
    puts @product.title
    all_categories = @product.product_categories
      puts all_categories
      puts "all cat" * 10
      all_categories.each do |c|
      @cat_id = c.category_id
      puts c.category_id
      puts "c" * 10
      puts c
      puts "c" * 10
      @cat = Category.find_by(id: @cat_id).title
      puts "cat title" * 10
      puts @cat
      puts "cat title" * 10
      return @cat
      end  
  end

  
#   def all_cat_prod  
      
#     @cat_all_product = Category.find_by(id: @cat_id).title

#         puts "cat all product" * 10
#         puts @cat_all_product
#         puts "cat all product" * 10
#   end
# end
    



end