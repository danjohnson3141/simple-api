require 'rails_helper'

RSpec.describe "group_types/new", :type => :view do
  before(:each) do
    assign(:group_type, GroupType.new(
      :name => "MyString",
      :description => "MyString",
      :created_by => 1,
      :updated_by => 1
    ))
  end

  it "renders new group_type form" do
    render

    assert_select "form[action=?][method=?]", group_types_path, "post" do

      assert_select "input#group_type_name[name=?]", "group_type[name]"

      assert_select "input#group_type_description[name=?]", "group_type[description]"

      assert_select "input#group_type_created_by[name=?]", "group_type[created_by]"

      assert_select "input#group_type_updated_by[name=?]", "group_type[updated_by]"
    end
  end
end
