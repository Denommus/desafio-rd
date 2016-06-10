require 'rails_helper'

RSpec.describe "contacts/edit", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :email => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit contact form" do
    render

    assert_select "form[action=?][method=?]", contact_path(@contact), "post" do

      assert_select "input#contact_email[name=?]", "contact[email]"

      assert_select "input#contact_user_id[name=?]", "contact[user_id]"
    end
  end
end
