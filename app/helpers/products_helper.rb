module ProductsHelper
<<<<<<< HEAD


  def category_helper
    puts @product.title
    all_categories_of_product_show = @product.product_categories
    puts "all cat" * 10  
    puts all_categories_of_product_show 
      puts "all cat" * 10
      all_categories_of_product_show.each do |c|
        puts "c" * 10
        puts c
        puts "c" * 10
        @cat_id = c.category_id
        puts "cat_id" * 10
        puts c.category_id
        puts "cat_id" * 10
        cat = Category.find_by(id: c.category_id).title
        
        puts "cat title" * 10
        puts cat
        puts "cat title" * 10

        
      end 
  end


  
#   def all_prod_cat(cat_id)  
      
#     @cat_all_product = Category.find_by(id:cat_id)
#     @product_cat = ProductCategory.find_by()
#     #@product_same_cat = Product.find_by(category_id:)

#         puts "cat all product" * 10
#         puts @cat_all_product
#         puts "cat all product" * 10
#   end

#   def similar_product
#     puts @product.categories
#       @similar_products = @product.categories.inject({}) do |result_hash, category|
#       result_hash[category.name.to_sym] => category.products.reject {|p| p == @product}
#       result_hash
#       end
#     end
#   end
    
# <% @similar_products.each do |k,product_array| # remember that the key is the name and the value is an array %>
#     <% product_array.each do |product| %>
#         <img src="<%= product.image.path %>" />
#     <% end %>
# <% end %>


end
=======
  #je créer une methode pour trouver les produits ayant la même categorie que le produit sur la view show
  def other_product(category)
    Product.find_by(category_id: category)
      puts ".O-P."*70
  end
end
>>>>>>> e7923199798142847a78917e4b7cbf2d347b92b6
