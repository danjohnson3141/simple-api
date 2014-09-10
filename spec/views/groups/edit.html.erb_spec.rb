require 'rails_helper'

RSpec.describe "groups/edit", :type => :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :name => "MyString",
      :description => "MyText",
      :visible => false,
      :leavable => false,
      :member_list => false,
      :group_type => nil,
      :owner_user_id => 1,
      :app_sponsor_id => 1,
      :created_by => 1,
      :updated_by => 1
    ))
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(@group), "post" do

      assert_select "input#group_name[name=?]", "group[name]"

      assert_select "textarea#group_description[name=?]", "group[description]"

      assert_select "input#group_visible[name=?]", "group[visible]"

      assert_select "input#group_leavable[name=?]", "group[leavable]"

      assert_select "input#group_member_list[name=?]", "group[member_list]"

      assert_select "input#group_group_type_id[name=?]", "group[group_type_id]"

      assert_select "input#group_owner_user_id[name=?]", "group[owner_user_id]"

      assert_select "input#group_app_sponsor_id[name=?]", "group[app_sponsor_id]"

      assert_select "input#group_created_by[name=?]", "group[created_by]"

      assert_select "input#group_updated_by[name=?]", "group[updated_by]"
    end
  end
end
