require 'rails_helper'

RSpec.describe "castles/new", type: :view do
  before(:each) do
    assign(:castle, Castle.new(
      name: "MyString",
      players: 1,
      is_open: false
    ))
  end

  it "renders new castle form" do
    render

    assert_select "form[action=?][method=?]", castles_path, "post" do

      assert_select "input[name=?]", "castle[name]"

      assert_select "input[name=?]", "castle[players]"

      assert_select "input[name=?]", "castle[is_open]"
    end
  end
end
