require 'rails_helper'
# bin/rspec spec/system/order_management_spec.rb #テスト呼び出し
RSpec.describe 'ボランティア受注機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    @user2 = FactoryBot.create(:user, name: "user2", email: "user2@email.com", admin: false)
    @volunteer = FactoryBot.create(:volunteer, user: @user2)
    visit root_path
    click_on 'ログインする'
    fill_in 'user_email', with: 'user@email.com'
    fill_in 'user_password', with: 'password'
    click_on 'ログイン'
  end

  it 'ボランティアを受注する' do
    visit volunteer_path(@volunteer.id)
    click_on '受注する'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "受注しました"
  end

  context 'ボランティアを受注' do
    before do
      visit volunteer_path(@volunteer.id)
      click_on '受注する'
      page.driver.browser.switch_to.alert.accept
    end
    it "受注を解除する" do
      visit volunteer_path(@volunteer.id)
      click_on '受注解除する'
      page.driver.browser.switch_to.alert.accept
    end
  end


end
