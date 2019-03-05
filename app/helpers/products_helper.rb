module ProductsHelper
  #je créer une methode pour trouver les produits ayant la même categorie que le produit sur la view show
  def other_product(category)
    Product.find_by(category_id: category)
      puts ".O-P."*70
  end
end
