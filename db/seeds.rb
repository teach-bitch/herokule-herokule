# =========== DESTROY ===========

puts 'Purge de la DB en cours...'

User.destroy_all
Category.destroy_all
Product.destroy_all
Basket.destroy_all
Facturation.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('categories')
ActiveRecord::Base.connection.reset_pk_sequence!('products')
ActiveRecord::Base.connection.reset_pk_sequence!('baskets')
ActiveRecord::Base.connection.reset_pk_sequence!('facturations')

puts 'purge terminée.'
sleep(1)

# =========== CREATION ===========

10.times do
	user = User.create!(
    email: Faker::Internet.unique.email,
    password: Faker::Internet.password)
    # is_admin is false by default
	print '.'
end
puts '=== User DB created ==='

5.times do
  category = Category.create!(
    title: Faker::Food.unique.fruits)
  print '.'
end
puts '=== Category DB created ==='

25.times do
  product = Product.create!(
    category_id: Category.all.sample.id,
    title: Faker::JapaneseMedia::OnePiece.unique.akuma_no_mi,
    description: Faker::JapaneseMedia::OnePiece.quote,
    price: rand(1.0..99.99),
    quantity: rand(1..100),
    reference: Faker::IDNumber.unique.spanish_citizen_number)
    # eventually add an image
  print '.'
end
puts '=== Product DB created ==='

50.times do
  product_quantity = Product.all.sample.quantity
  basket = Basket.create!(
    user_id: User.all.sample.id,
    product_id: Product.all.sample.id,
    quantity: rand(1..product_quantity))
  print '.'
end
puts '=== Basket DB created ==='

50.times do
  facturation = Facturation.create!(
    basket_id: Basket.all.sample.id,
    price: rand(1.0..1337.0))
  print '.'
end
puts '=== Facturation DB created ==='
