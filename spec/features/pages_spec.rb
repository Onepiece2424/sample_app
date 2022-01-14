require 'rails_helper'

RSpec.feature "Pages", type: :feature do
  given(:user) { create(:user) }
  given!(:p) { create(:page) }

  background do
    visit root_path
    click_link "ログイン"
    fill_in "メールアドレス", with: user.email
    fill_in "パスワード", with: user.password
    click_button "ログイン"
  end

  scenario "ログイン機能" do
    expect(page).to have_content 'ログインしました'
  end

  scenario "新規Worryの作成" do
    visit pages_path
    expect(page).to have_content p.category
    expect(page).to have_content p.date
    expect(page).to have_content p.thinking
    expect(page).to have_content p.worry
    expect(page).to have_content p.approach
  end
end
