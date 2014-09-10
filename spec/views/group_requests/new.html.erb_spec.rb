require 'rails_helper'

RSpec.describe "group_requests/new", :type => :view do
  before(:each) do
    assign(:group_request, GroupRequest.new(
      :user => nil,
      :group => nil,
      :pre_auth => false,
      :approved => false,
      :created_by => 1,
      :updated_by => 1
    ))
  end

  it "renders new group_request form" do
    render

    assert_select "form[action=?][method=?]", group_requests_path, "post" do

      assert_select "input#group_request_user_id[name=?]", "group_request[user_id]"

      assert_select "input#group_request_group_id[name=?]", "group_request[group_id]"

      assert_select "input#group_request_pre_auth[name=?]", "group_request[pre_auth]"

      assert_select "input#group_request_approved[name=?]", "group_request[approved]"

      assert_select "input#group_request_created_by[name=?]", "group_request[created_by]"

      assert_select "input#group_request_updated_by[name=?]", "group_request[updated_by]"
    end
  end
end
