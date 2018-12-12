feature "User creates todo" do
  scenario "successfully" do
    sign_in

    click_on "Add new todo"
    fill_in "Title", with: "comprar arroz"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: 'comprar arroz'
  end
end