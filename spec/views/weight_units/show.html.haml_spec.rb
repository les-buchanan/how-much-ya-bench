require 'rails_helper'

RSpec.describe "weight_units/show", type: :view do
  before(:each) do
    @weight_unit = assign(:weight_unit, WeightUnit.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
