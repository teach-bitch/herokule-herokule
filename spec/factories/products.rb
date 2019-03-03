FactoryBot.define do
  factory :product do
    title { "MyString" }
    description { "MyText" }
    price { 1.5 }
    quantity { 1 }
    reference { "" }
  end
end
