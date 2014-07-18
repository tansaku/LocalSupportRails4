require 'rails_helper'

RSpec.describe "organisations/show", :type => :view do
  before(:each) do
    @organisation = assign(:organisation, Organisation.create!(
      :name => "Name",
      :description => "Description",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Address/)
  end
end
