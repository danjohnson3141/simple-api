require 'rails_helper'

RSpec.describe "group_members/index", :type => :view do
  before(:each) do
    assign(:group_members, [
      GroupMember.create!(
        :user => nil,
        :group => nil,
        :created_by => 1,
        :updated_by => 2
      ),
      GroupMember.create!(
        :user => nil,
        :group => nil,
        :created_by => 1,
        :updated_by => 2
      )
    ])
  end

  it "renders a list of group_members" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
