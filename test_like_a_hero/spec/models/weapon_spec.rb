require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it "is invalid if the level is not between 1 and 99" do 
    level = FFaker::Random.rand(100..9999)
    weapon = build(:weapon, level: level)

    expect(weapon).to_not be_valid
  end  

  it "returns the correct weapon title" do
    name = FFaker::Lorem.word
    level = FFaker::Random.rand(1..99)

    weapon = build(:weapon, name: name, level: level)

    expect(weapon.title).to eq("#{weapon.name} ##{level}")
  end

  it "returns the correct weapon current power" do
    level = FFaker::Random.rand(1..99)
    power_base = FFaker::Random.rand(100..5000)
    power_step = FFaker::Random.rand(20..100)

    weapon = build(:weapon, power_base: power_base, power_step: power_step, level: level)

    expect(weapon.current_power).to eq(power_base  + ((level - 1) * power_step))
  end
end
