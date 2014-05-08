require "spec_helper"

feature "User views dashboard" do
  scenario "sees joined groups" do
    user = create(:user)
    group = create(:group, title: "My Group")
    user.join(group)
    visit dashboard_path(as: user)
    expect(page).to have_css(".group", text: "My Group")
  end
end
