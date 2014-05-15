require "spec_helper"

feature "User adds location" do
  scenario "successfully" do
    user = create(:user)
    group = create(:group)
    user.join(group)

    visit group_path(group, as: user)

    role("add-location").click

    fill_in "Name", with: "hoge"
    click_button "Add location"

    expect(page).to have_css(".location", text: "hoge")
  end

  def role(selector)
    find("[data-role=#{selector}]")
  end
end
