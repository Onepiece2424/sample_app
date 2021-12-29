require 'rails_helper'

RSpec.feature 'Page feature', type: :feature do
  given(:page) { create(:page) }

  background do
    visit pages_path
  end

  feature 'Worry一覧ページ' do
    scenario 'dateが表示されること' do
      expect(page).to have_content page.date
    end
  end
end
