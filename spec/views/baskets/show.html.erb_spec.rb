require 'rails_helper'

RSpec.describe "baskets/show", type: :view do
  before(:each) do
    @basket = assign(:basket, Basket.create!(
      :quantity => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
