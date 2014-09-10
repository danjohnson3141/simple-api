require 'rails_helper'

RSpec.describe "group_types/index", :type => :view do
  before(:each) do
    assign(:group_types, [
      GroupType.create!(
        :name => "Name",
        :description => "Description",
        :created_by => 1,
        :updated_by => 2
      ),
      GroupType.create!(
        :name => "Name",
        :description => "Description",
        :created_by => 1,
        :updated_by => 2
      )
    ])
  end

  it "renders a list of group_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
