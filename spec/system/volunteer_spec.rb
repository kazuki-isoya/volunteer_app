require 'rails_helper'
# bin/rspec spec/system/volunteer_spec.rb #テスト呼び出し
RSpec.describe 'ボランティア機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @volunteer = FactoryBot.create(:volunteer, user: @user)
    visit volunteers_path
    click_on 'ログインする'
    sleep 1
    fill_in 'user_email', with: 'user@email.com'
    fill_in 'user_password', with: 'password'
    click_on 'ログイン'
  end

  it 'ボランティアを新規登録' do
    click_on '新規登録'
    fill_in 'volunteer_title', with: 'rspec_test_title'
    fill_in 'volunteer_describe', with: 'rspec_test_describe'
    fill_in 'volunteer_address', with: 'rspec_test_address'
    fill_in 'volunteer_date', with: '00_2021_04_30_10_00'
    click_on '登録する'
    sleep 1
    expect(page).to have_content "ボランティア依頼を作成しました"
  end

  it 'ボランティアを編集' do
    visit volunteer_path(@volunteer.id)
    click_on '編集'
    sleep 1
    click_on '更新'
    expect(page).to have_content "ボランティア内容を編集しました。"
  end

  it 'ボランティアを削除' do
    visit volunteers_path
    click_on '依頼を削除'
    page.driver.browser.switch_to.alert.accept #confirmダイアログでOKを押す
    expect(page).to have_content "ボランティアを削除しました。"
  end

  context '検索機能' do
    before do
      @search = FactoryBot.create(:volunteer, title: 'search', user: @user)
    end
    it '検索機能' do
      fill_in 'q_title_cont', with: 'search'
      select '指定なし', from: 'カテゴリー'
      click_on 'search_btn'
      expect(page).to have_content "search"
    end
  end
end
