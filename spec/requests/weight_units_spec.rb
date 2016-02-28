require 'rails_helper'

RSpec.describe "WeightUnits", type: :request do
  describe "GET /weight_units" do
    it "works! (now write some real specs)" do
      get weight_units_path
      expect(response).to have_http_status(200)
    end
  end
end
