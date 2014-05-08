require "spec_helper"

feature "User creates group" do
  scenario "with valid information" do
    user = create(:user)
    visit dashboard_path(as: user)
    create_group("My Group")
    expect(page).to have_css("h1", text: "My Group")
  end

  scenario "and becomes a member of that group" do
    user = create(:user)
    visit dashboard_path(as: user)
    create_group("My Group")
    expect(page).to have_css(".member", text: user.username)
  end

  def create_group(name)
    find("[data-role=create-group]").click
    fill_in "Title", with: name
    click_button "Create"
  end
end
