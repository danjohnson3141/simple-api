require 'rails_helper'

RSpec.describe "groups/index", :type => :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        :name => "Name",
        :description => "MyText",
        :visible => false,
        :leavable => false,
        :member_list => false,
        :group_type => nil,
        :owner_user_id => 1,
        :app_sponsor_id => 2,
        :created_by => 3,
        :updated_by => 4
      ),
      Group.create!(
        :name => "Name",
        :description => "MyText",
        :visible => false,
        :leavable => false,
        :member_list => false,
        :group_type => nil,
        :owner_user_id => 1,
        :app_sponsor_id => 2,
        :created_by => 3,
        :updated_by => 4
      )
    ])
  end

  it "renders a list of groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
