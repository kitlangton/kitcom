feature "Manage illustrations" do
  scenario "Upload a new illustration" do
    image_path = "#{Rails.root}/spec/images/illustration_example.png"

    visit illustrations_url
    click_button "New Illustration"

    fill_in "Title", with: "Guards of Nazareth"
    fill_in "Image", with: image_path
  end
end
