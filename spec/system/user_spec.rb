require 'rails_helper'
# bin/rspec spec/system/user_spec.rb #テスト呼び出し
RSpec.describe 'ユーザー機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    visit root_path
  end

  it 'ユーザー情報を入力してログインする' do
    click_on 'ログインする'
    sleep 2
    fill_in 'user_email', with: 'user@email.com'
    fill_in 'user_password', with: 'password'
    click_on 'ログイン'
    expect(page).to have_content "ログインしました。"
  end
end
