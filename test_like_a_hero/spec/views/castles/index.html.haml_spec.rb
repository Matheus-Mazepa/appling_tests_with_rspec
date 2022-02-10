require 'rails_helper'

RSpec.describe "castles/index", type: :view do
  before(:each) do
    assign(:castles, [
      Castle.create!(
        name: "Name",
        players: 2,
        is_open: false
      ),
      Castle.create!(
        name: "Name",
        players: 2,
        is_open: false
      )
    ])
  end

  it "renders a list of castles" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
