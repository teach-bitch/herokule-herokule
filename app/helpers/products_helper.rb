module ProductsHelper
  def category_helper
      puts @product.title
      all_categories = @product.product_categories
      all_categories.each do |c|
      cat_id = c.category_id
      puts c.category_id
      cat = Category.find_by(id: cat_id).title
      puts cat
    end  
  end
end
