require 'rails_helper'

RSpec.describe "GroupTypes", :type => :request do
  describe "GET /group_types" do
    it "works! (now write some real specs)" do
      get group_types_path
      expect(response.status).to be(200)
    end
  end
end
