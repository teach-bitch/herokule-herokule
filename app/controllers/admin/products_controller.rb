
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

  def create
      puts params
      puts "*"*60
      puts "method create admin"
      puts "*"*60
      product = Product.new(
      title: params[:title],
      description: params[:description],
      price: params[:price],
      quantity: params[:quantity],
      brand: params[:brand],
      reference: params[:reference])

      if product.save
        puts "*"*60
        puts "product save"
        puts "*"*60

        redirect_to admin_products_path

        puts "*"*60
        puts "redirect ?"
        puts "*"*60
      else
        redirect_to :back
      end


  end

  def create
      puts params
      puts "*"*60
      puts "method create admin"
      puts "*"*60
      product = Product.new(
      title: params[:title],
      description: params[:description],
      price: params[:price],
      quantity: params[:quantity],
      brand: params[:brand],
      reference: params[:reference])

      if product.save
        puts "*"*60
        puts "product save"
        puts "*"*60

        redirect_to admin_products_path

        puts "*"*60
        puts "redirect ?"
        puts "*"*60
      else
        redirect_to :back
      end


  end


    def destroy

      puts "*"*60
      puts "destroy"
      puts params
      puts "*"*60

      Product.delete(Product.find(params[:id]))
      redirect_to admin_users_path

    end

    def edit
        @product = Product.find(params[:id])
    end

    def update

      @user = Product.find_by(id:params[:id])

      puts params

      if @product.update(
        title: params[:title],
        description: params[:description],
        price: params[:price],
        quantity: params[:quantity],
        brand: params[:brand],
        reference: params[:reference])

        redirect_to (admin_product_path(@product))
        flash[:sucess] = "produit mis a jour"
        puts "S"
      else
        #redirect_to(edit_gossip_path)
        puts "CANCEL*"*10
        render :edit
        flash[:danger] = "Edition interrompu"

      end
  end




end
