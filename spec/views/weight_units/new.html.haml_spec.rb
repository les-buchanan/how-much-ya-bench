require 'rails_helper'

RSpec.describe "weight_units/new", type: :view do
  before(:each) do
    assign(:weight_unit, WeightUnit.new(
      :name => "MyString"
    ))
  end

  it "renders new weight_unit form" do
    render

    assert_select "form[action=?][method=?]", weight_units_path, "post" do

      assert_select "input#weight_unit_name[name=?]", "weight_unit[name]"
    end
  end
end
