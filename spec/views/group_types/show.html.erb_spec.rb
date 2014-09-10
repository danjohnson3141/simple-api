require 'rails_helper'

RSpec.describe "group_types/show", :type => :view do
  before(:each) do
    @group_type = assign(:group_type, GroupType.create!(
      :name => "Name",
      :description => "Description",
      :created_by => 1,
      :updated_by => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
