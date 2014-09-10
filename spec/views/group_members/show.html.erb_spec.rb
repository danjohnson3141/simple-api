require 'rails_helper'

RSpec.describe "group_members/show", :type => :view do
  before(:each) do
    @group_member = assign(:group_member, GroupMember.create!(
      :user => nil,
      :group => nil,
      :created_by => 1,
      :updated_by => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
