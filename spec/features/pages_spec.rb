require 'rails_helper'

RSpec.feature "Pages", type: :feature do
  given(:user) { create(:user) }

  scenario "ログイン機能" do
    visit root_path
    click_link "ログイン"
    fill_in "メールアドレス", with: user.email
    fill_in "パスワード", with: user.password
    click_button "ログイン"
    expect(page).to have_content 'ログインしました'
  end
end
