require 'rails_helper'

RSpec.describe "custom_fields/index", type: :view do
  before(:each) do
    assign(:custom_fields, [
      CustomField.create!(
        :name => "Name",
        :type => "Type"
      ),
      CustomField.create!(
        :name => "Name",
        :type => "Type"
      )
    ])
  end

  it "renders a list of custom_fields" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
