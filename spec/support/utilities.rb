include ApplicationHelper

def sign_in(user)
  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  #Sign in without Capybara.
  cookies[:remember_token] = user.remember_token
end