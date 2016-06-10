require 'rails_helper'

RSpec.describe "custom_fields/new", type: :view do
  before(:each) do
    assign(:custom_field, CustomField.new(
      :name => "MyString",
      :type => ""
    ))
  end

  it "renders new custom_field form" do
    render

    assert_select "form[action=?][method=?]", custom_fields_path, "post" do

      assert_select "input#custom_field_name[name=?]", "custom_field[name]"

      assert_select "input#custom_field_type[name=?]", "custom_field[type]"
    end
  end
end
