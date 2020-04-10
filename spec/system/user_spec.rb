require 'rails_helper'
# bin/rspec spec/system/user_spec.rb #テスト呼び出し
RSpec.describe 'ユーザー機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    visit root_path
  end

  it 'ユーザー情報を入力してログインする' do
    click_on 'ログインする'
    fill_in 'user_email', with: 'user@email.com'
    fill_in 'user_password', with: 'password'
    click_on 'ログイン'
    expect(page).to have_content "ログインしました。"
  end

  context 'ログイン中' do
    before do
      click_on 'ログインする'
      fill_in 'user_email', with: 'user@email.com'
      fill_in 'user_password', with: 'password'
      click_on 'ログイン'
    end
    it 'ユーザー詳細を見る' do
      click_on "#{@user.name}のプロフィール"
      expect(page).to have_content "ユーザー詳細"
    end
    it 'ユーザーを編集する' do
        visit edit_user_registration_path(@user.id)
        click_on "更新"
        expect(page).to have_content "アカウント情報を変更しました。"
    end
  end
end
