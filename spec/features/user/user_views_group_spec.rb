require "spec_helper"

feature "User views group" do
  scenario "from dashboard" do
    user = create(:user)
    group = create(:group, title: "My Group")
    user.join(group)
    visit dashboard_path(as: user)
    click_link "My Group"
    expect(page).to have_css("h1", text: "My Group")
  end
end
