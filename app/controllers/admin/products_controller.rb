
class Admin::ProductsController < AdminController


  # Methods omitted
  def index

    puts "$" * 60
    puts "PRODUCT ADMIN INDEX"
    puts params
    puts "$" * 60
    @products = Product.all
    @categories = Category.all

  end

  def show

    def set_cats
      
      @all_cat_categories = @product.categories # toutes les catégories auxquelles le chat appartient
      puts "set_cats" * 30
      puts @all_cat_categories
      puts "set_cats" * 30

      @the_cats = []

      @all_cat_categories.each do |category|
        cats = category.products # tout les chats appartenant à la catégorie de la boucle
        cats.each do |cat|
          @the_cats << cat
        end
      end
      puts @the_cats
    end

    @product = Product.find(params[:id])
    @all_product = Product.all
    puts @product.categories
    puts "@product.categories" * 30
    set_cats

    puts "SHOW" * 30



  end






end
