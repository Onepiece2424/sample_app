FactoryBot.define do
  factory :comment do
    comment_content { "MyString" }
    user { nil }
    page { nil }
  end
end
