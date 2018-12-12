feature "User sees own todos" do
  scenario "doesn't see others" do
    Todo.create!(title: 'Buy milk', email: 'persona2@example.com')

    sign_in_as 'someone@example.com'

    expect(page).not_to have_content('Buy milk')
  end

  scenario "see own todos" do
    email = 'persona@example.com'
    Todo.create!(title: 'Buy milk', email: email)

    sign_in_as email

    expect(page).to have_content('Buy milk')
  end
end