require 'rails_helper'

RSpec.describe "organisations/index", :type => :view do
  before(:each) do
    assign(:organisations, [
      Organisation.create!(
        :name => "Name",
        :description => "Description",
        :address => "Address"
      ),
      Organisation.create!(
        :name => "Name",
        :description => "Description",
        :address => "Address"
      )
    ])
  end

  it "renders a list of organisations" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
