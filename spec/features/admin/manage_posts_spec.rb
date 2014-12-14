feature "Manage posts" do
  scenario "Create a new post" do
    visit posts_url
    click_link 'New Post'
    fill_in "Title", with: "A Great Day"
    fill_in "Body", with: "Today was a truly great day, we enjoyed ourselves immensely."

    click_button "Create Post"
    expect(page).to have_content "A Great Day"
    expect(page).to have_content "Today was a truly great day, we enjoyed ourselves immensely."
  end
end
