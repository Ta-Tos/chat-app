module SignInSupport
  def sign_in(user)
    visit root_path
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    # ログインボタンをクリックする
    click_on('Log in')
    # トップページに遷移していることを確認する
    expect(current_path).to eq(root_path)
  end
end
