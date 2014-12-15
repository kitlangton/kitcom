# Feature: Home page
#   As a visitor
#   I want to visit a home page
#   So I can learn more about the website
feature 'Home page' do

  # Scenario: Visit the home page
  #   Given I am a visitor
  #   When I visit the home page
  #   Then I see "Welcome"
  #

  scenario 'visit the home page' do
    post = create(:post)
    illustration = create(:illustration)
    date = Date.today.strftime("%B %e, %Y")

    visit root_path
    expect(page).to have_content 'Welcome'
    expect(page).to have_css ".date", text: date
    expect(page).to have_css ".post", text: post.title
    expect(page).to have_css ".illustration", text: illustration.title
  end

end
