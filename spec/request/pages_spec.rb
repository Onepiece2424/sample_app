require 'rails_helper'

RSpec.describe 'Page', type: :request do
  let(:page) { create(:page) }

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
  end
end
