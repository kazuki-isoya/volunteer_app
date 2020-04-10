require 'rails_helper'
# bin/rspec spec/system/goodevaluation_spec.rb #テスト呼び出し
RSpec.describe 'ユーザー評価機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @user2 = FactoryBot.create(:user, name: "user2", email: "user2@email.com", admin: false)
    visit root_path
    click_on 'ログインする'
    fill_in 'user_email', with: 'user@email.com'
    fill_in 'user_password', with: 'password'
    click_on 'ログイン'
  end

  it '他のユーザーを評価する' do
    visit user_path(@user2.id)
    click_on '評価する'
    expect(page).to have_content "#{@user2.name}を評価しました。"
  end

  it "評価を解除する" do
    visit user_path(@user2.id)
    click_on '評価する'
    sleep 2
    click_on '評価の取り消し'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "#{@user2.name}の評価を取り消しました"

  end

end
