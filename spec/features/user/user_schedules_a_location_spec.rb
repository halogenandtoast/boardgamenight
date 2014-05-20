require "spec_helper"

feature "User schedules a location", :js do
  scenario "with a recurring date" do
    user = create(:user)
    group = create(:group)
    user.join(group)
    location = create(:location, group: group)

    visit group_path(group, as: user)

    find(".location a", text: location.name).click

    fill_in "Starts on", with: Date.tomorrow
    page.execute_script <<-JS
      $("#location_recurrence_rules").recurring_select('set_initial_values')
      $("#location_recurrence_rules").val("custom")
      $("#location_recurrence_rules").recurring_select('changed')
    JS

    select "Weekly", from: "Frequency:"
    find("[name=rs_weekly_interval]").set("1")
    value("3").click
    click_button "OK"
    click_button "Update Schedule"
  end
end
