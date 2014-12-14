feature "Manage illustrations" do
  scenario "Upload a new illustration" do
    visit "illustrations/index"
    click_button "New Illustration"

    fill_in "Title", with: "Guards of Nazareth"
  end
end
