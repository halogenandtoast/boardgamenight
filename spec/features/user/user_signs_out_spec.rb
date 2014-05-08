require "spec_helper"

feature "User signs out" do
  scenario "Sees sign in page" do
    user = create(:user)
    visit dashboard_path(as: user)
    click_link "Sign out"
    expect(page).to have_content("Sign in")
  end
end
