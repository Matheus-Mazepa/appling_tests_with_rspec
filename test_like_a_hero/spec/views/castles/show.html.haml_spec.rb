require 'rails_helper'

RSpec.describe "castles/show", type: :view do
  before(:each) do
    @castle = assign(:castle, Castle.create!(
      name: "Name",
      players: 2,
      is_open: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
