require 'rails_helper'

RSpec.describe "weight_units/edit", type: :view do
  before(:each) do
    @weight_unit = assign(:weight_unit, WeightUnit.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit weight_unit form" do
    render

    assert_select "form[action=?][method=?]", weight_unit_path(@weight_unit), "post" do

      assert_select "input#weight_unit_name[name=?]", "weight_unit[name]"
    end
  end
end
