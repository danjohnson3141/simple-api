require 'rails_helper'

RSpec.describe "group_types/edit", :type => :view do
  before(:each) do
    @group_type = assign(:group_type, GroupType.create!(
      :name => "MyString",
      :description => "MyString",
      :created_by => 1,
      :updated_by => 1
    ))
  end

  it "renders the edit group_type form" do
    render

    assert_select "form[action=?][method=?]", group_type_path(@group_type), "post" do

      assert_select "input#group_type_name[name=?]", "group_type[name]"

      assert_select "input#group_type_description[name=?]", "group_type[description]"

      assert_select "input#group_type_created_by[name=?]", "group_type[created_by]"

      assert_select "input#group_type_updated_by[name=?]", "group_type[updated_by]"
    end
  end
end
