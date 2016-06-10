require 'rails_helper'

RSpec.describe "custom_fields/show", type: :view do
  before(:each) do
    @custom_field = assign(:custom_field, CustomField.create!(
      :name => "Name",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
  end
end
