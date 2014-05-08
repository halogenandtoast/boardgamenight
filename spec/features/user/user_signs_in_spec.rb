require "spec_helper"

feature "User signs in" do
  scenario "with valid credentials" do
    user = create(:user)
    visit root_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password_digest
    click_button "Sign in"
    expect(page).to have_content("Sign out")
  end
end
