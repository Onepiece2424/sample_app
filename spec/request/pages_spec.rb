require 'rails_helper'

RSpec.describe 'Page', type: :request do
  let!(:page) { create(:page) }
  let(:user) { create(:user) }

  before do
    sign_in user
    get pages_path
  end

  describe 'Worry一覧ページ' do
    it 'レスポンスが返ってくること' do
      expect(response.status).to eq(200)
    end

    it 'ページタイトルが存在していること' do
      assert_select "title", "Worry List"
    end

    it 'レスポンスにdate、category、worry、thinking、approachが含まれること' do
      expect(response.body). to include page.date
      expect(response.body). to include page.category
      expect(response.body). to include page.worry
      expect(response.body). to include page.thinking
      expect(response.body). to include page.approach
    end
  end
end
