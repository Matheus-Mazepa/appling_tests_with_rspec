require 'rails_helper'

RSpec.describe "castles/edit", type: :view do
  before(:each) do
    @castle = assign(:castle, Castle.create!(
      name: "MyString",
      players: 1,
      is_open: false
    ))
  end

  it "renders the edit castle form" do
    render

    assert_select "form[action=?][method=?]", castle_path(@castle), "post" do

      assert_select "input[name=?]", "castle[name]"

      assert_select "input[name=?]", "castle[players]"

      assert_select "input[name=?]", "castle[is_open]"
    end
  end
end
