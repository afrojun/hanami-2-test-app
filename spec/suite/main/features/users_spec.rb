RSpec.feature "Loading a user's page", :web do
  scenario "It greets the user by name" do
    factory[:user, name: "Jane Doe"]

    visit "/users/1"

    expect(page).to have_content "You are Jane"
  end
end
