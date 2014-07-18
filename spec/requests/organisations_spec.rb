require 'rails_helper'

RSpec.describe "Organisations", :type => :request do
  describe "GET /organisations" do
    it "works! (now write some real specs)" do
      get organisations_path
      expect(response.status).to be(200)
    end
  end
end
