require 'rails_helper'

RSpec.describe "baskets/index", type: :view do
  before(:each) do
    assign(:baskets, [
      Basket.create!(
        :quantity => 2
      ),
      Basket.create!(
        :quantity => 2
      )
    ])
  end

  it "renders a list of baskets" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
