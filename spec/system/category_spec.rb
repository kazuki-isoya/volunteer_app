require 'rails_helper'
# bin/rspec spec/system/category_spec.rb #テスト呼び出し
RSpec.describe 'ユーザー評価機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @user2 = FactoryBot.create(:user, name: "user2", email: "user2@email.com", admin: false)
    @category = FactoryBot.create(:category)
    visit root_path
    click_on 'ログインする'
    sleep 1
    fill_in 'user_email', with: 'user@email.com'
    fill_in 'user_password', with: 'password'
    click_on 'ログイン'
  end

  it 'カテゴリーリストを見る。' do
    visit user_path(@user.id)
    click_on 'カテゴリーリスト'
    expect(page).to have_content "カテゴリーリスト"
  end

  it "カテゴリーを新規作成" do
    visit new_category_path
    fill_in 'category_name', with: 'テスト'
    click_on '決定'
    expect(page).to have_content "カテゴリーを作成しました"
  end

  it "カテゴリーを編集" do
    visit category_path(@category.id)
    click_on '編集'
    sleep 1
    click_on '決定'
    expect(page).to have_content "カテゴリーを編集しました"
  end

  it "カテゴリーを削除" do
    visit categories_path
    click_on '削除'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "カテゴリーを削除しました"
  end

  context '管理者でないユーザーがログイン' do
    before do
      click_on 'ログアウトする'
      sleep 1
      click_on 'ログインする'
      fill_in 'user_email', with: 'user2@email.com'
      fill_in 'user_password', with: 'password'
      click_on 'ログイン'
    end

    it "カテゴリーにアクセス出来ない" do
      visit categories_path
      expect(page).to have_content "権限がありません"
    end
  end

end
