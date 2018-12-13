feature "User creates todo" do
  scenario "successfully" do
    title = 'comprar arroz'
    sign_in
    create_todo(title)
    expect(page).to have_css '.todos li', text: title
  end
end