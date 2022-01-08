FactoryBot.define do
  factory :page do
    date { "test_date" }
    category { "test_category" }
    worry { "test_worry" }
    thinking { "test_thinking" }
    approach { "test_approach" }
  end

  factory :user do
    email                   { "aaa@gmail.com" }
    password                { "00000000" }
  end
end
