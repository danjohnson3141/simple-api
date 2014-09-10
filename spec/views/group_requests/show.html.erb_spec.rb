require 'rails_helper'

RSpec.describe "group_requests/show", :type => :view do
  before(:each) do
    @group_request = assign(:group_request, GroupRequest.create!(
      :user => nil,
      :group => nil,
      :pre_auth => false,
      :approved => false,
      :created_by => 1,
      :updated_by => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
