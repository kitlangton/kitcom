feature "Manage illustrations" do
  scenario "Upload a new illustration" do
    image_path = "#{Rails.root}/spec/images/illustration_example.png"

    visit illustrations_url
    click_link "New Illustration"

    fill_in "Title", with: "Guards of Nazareth"
    attach_file "illustration_image", File.absolute_path(image_path)
    click_button "Create Illustration"

    expect(page).to have_content "Illustration was successfully created."
  end
end
