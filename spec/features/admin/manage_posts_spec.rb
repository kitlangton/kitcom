feature "Manage posts" do
  scenario "Create a new post" do
    visit posts_url
    click_button 'New Post'
    fill_in "Title", with: "A Great Day"
    fill_in "Body", with: "Today was a truly great day, we enjoyed ourselves immensely."

    click_button "Submit"
    expect(page).to have_content "A Great Day"
    expect(page).to have_content "Today was a truly great day, we enjoyed ourselves immensely."
  end
end
