require 'rails_helper'

RSpec.describe "group_members/new", :type => :view do
  before(:each) do
    assign(:group_member, GroupMember.new(
      :user => nil,
      :group => nil,
      :created_by => 1,
      :updated_by => 1
    ))
  end

  it "renders new group_member form" do
    render

    assert_select "form[action=?][method=?]", group_members_path, "post" do

      assert_select "input#group_member_user_id[name=?]", "group_member[user_id]"

      assert_select "input#group_member_group_id[name=?]", "group_member[group_id]"

      assert_select "input#group_member_created_by[name=?]", "group_member[created_by]"

      assert_select "input#group_member_updated_by[name=?]", "group_member[updated_by]"
    end
  end
end
