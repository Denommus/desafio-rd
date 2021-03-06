require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :email => "Email",
        :user_id => 1
      ),
      Contact.create!(
        :email => "Email",
        :user_id => 1
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
