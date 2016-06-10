require 'rails_helper'

RSpec.describe "custom_fields/edit", type: :view do
  before(:each) do
    @custom_field = assign(:custom_field, CustomField.create!(
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders the edit custom_field form" do
    render

    assert_select "form[action=?][method=?]", custom_field_path(@custom_field), "post" do

      assert_select "input#custom_field_name[name=?]", "custom_field[name]"

      assert_select "input#custom_field_type[name=?]", "custom_field[type]"
    end
  end
end
