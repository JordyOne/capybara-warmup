require "spec_helper.rb"

feature "Homepage" do
  scenario "should have a greeting" do
    visit "/"

    expect(page).to have_content("RSVP App")
  end
end

feature "Homepage" do
  scenario "links take you to RSVP pages" do
    visit "/"

    click_link("RSVP")
    expect(page).to have_content("New RSVP")
  end
end

feature "#RSVP?" do
  scenario "#name input?" do
    visit"/rsvps/new"

    fill_in "name", with: "Jordan"
    click_button("RSVP")
    expect().to have_content("Jordan")
  end
end

