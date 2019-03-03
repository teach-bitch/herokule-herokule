require 'rails_helper'

RSpec.describe "baskets/edit", type: :view do
  before(:each) do
    @basket = assign(:basket, Basket.create!(
      :quantity => 1
    ))
  end

  it "renders the edit basket form" do
    render

    assert_select "form[action=?][method=?]", basket_path(@basket), "post" do

      assert_select "input[name=?]", "basket[quantity]"
    end
  end
end
