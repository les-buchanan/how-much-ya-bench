require 'rails_helper'

RSpec.describe "weight_units/index", type: :view do
  before(:each) do
    assign(:weight_units, [
      WeightUnit.create!(
        :name => "Name"
      ),
      WeightUnit.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of weight_units" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
