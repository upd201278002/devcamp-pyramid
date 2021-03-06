require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      :name => "MyString",
      :age => 1,
      :company => "MyString",
      :money => "9.99"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_name[name=?]", "member[name]"

      assert_select "input#member_age[name=?]", "member[age]"

      assert_select "input#member_company[name=?]", "member[company]"

      assert_select "input#member_money[name=?]", "member[money]"
    end
  end
end
