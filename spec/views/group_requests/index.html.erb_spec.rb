require 'rails_helper'

RSpec.describe "group_requests/index", :type => :view do
  before(:each) do
    assign(:group_requests, [
      GroupRequest.create!(
        :user => nil,
        :group => nil,
        :pre_auth => false,
        :approved => false,
        :created_by => 1,
        :updated_by => 2
      ),
      GroupRequest.create!(
        :user => nil,
        :group => nil,
        :pre_auth => false,
        :approved => false,
        :created_by => 1,
        :updated_by => 2
      )
    ])
  end

  it "renders a list of group_requests" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
