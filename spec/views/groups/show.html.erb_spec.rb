require 'rails_helper'

RSpec.describe "groups/show", :type => :view do
  before(:each) do
    @group = assign(:group, Group.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
