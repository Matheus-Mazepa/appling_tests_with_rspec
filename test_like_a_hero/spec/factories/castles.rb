FactoryBot.define do
  factory :castle do
    name { "MyString" }
    players { 1 }
    is_open { false }
  end
end
