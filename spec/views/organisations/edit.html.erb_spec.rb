require 'rails_helper'

RSpec.describe "organisations/edit", :type => :view do
  before(:each) do
    @organisation = assign(:organisation, Organisation.create!(
      :name => "MyString",
      :description => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit organisation form" do
    render

    assert_select "form[action=?][method=?]", organisation_path(@organisation), "post" do

      assert_select "input#organisation_name[name=?]", "organisation[name]"

      assert_select "input#organisation_description[name=?]", "organisation[description]"

      assert_select "input#organisation_address[name=?]", "organisation[address]"
    end
  end
end
