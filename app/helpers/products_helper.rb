module ProductsHelper

  def set_cats
    @all_cat_categories = @product.categories # toutes les catégories auxquelles le chat appartient
    puts @all_cat_categories

    @the_cats = []

    @all_cat_categories.each do |category|
      cats = category.products # tout les chats appartenant à la catégorie de la boucle
      cats.each do |cat|
        @the_cats << cat
      end
    end
    puts @the_cats
  end

  # def category_helper
  #   puts @product.title
  #   all_categories_of_product_show = @product.product_categories
  #   puts "all cat" * 10  
  #   puts all_categories_of_product_show 
  #     puts "all cat" * 10
  #     all_categories_of_product_show.each do |c|
  #       puts "c" * 10
  #       puts c
  #       puts "c" * 10
  #       @cat_id = c.category_id
  #       puts "cat_id" * 10
  #       puts c.category_id
  #       puts "cat_id" * 10
  #       cat = Category.find_by(id: c.category_id).title
  #       puts "product.categories"
  #       puts @product.categories
  #       puts "product.categories"
  #       puts "cat title" * 10
  #       puts cat
  #       puts "cat title" * 10    
  #     end 
  # end


  
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
