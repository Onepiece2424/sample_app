require 'rails_helper'

RSpec.describe 'Page', type: :request do
  let!(:page) { create(:page) }

  before do
    get pages_path
  end

  describe 'Worry一覧ページ' do
    it 'レスポンスが返ってくること' do
      expect(response.status).to eq(200)
    end

    it 'ページタイトルが存在していること' do
      assert_select "title", "Worries List"
    end

    it 'レスポンスにdateが含まれること' do
      expect(response.body). to include page.date
    end

    it 'レスポンスにworryが含まれること' do
      expect(response.body). to include page.worry
    end

    it 'レスポンスにreasonが含まれること' do
      expect(response.body). to include page.reason
    end

    it 'レスポンスにapproachが含まれること' do
      expect(response.body). to include page.approach
    end
  end
end
