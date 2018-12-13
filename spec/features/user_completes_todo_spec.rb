feature "User completes todo" do
  scenario "successfully" do
    sign_in

    click_on "Add new todo"
    fill_in "Title", with: "comprar arroz"
    click_on "Submit"

    click_on "Mark complete"
    expect(page).to have_css '.todos li.completed', text: "comprar arroz"
  end
end