feature "User completes todo" do
  scenario "successfully" do
    title = "comprar arroz"
    sign_in
    create_todo(title)
    click_on "Mark complete"
    expect(page).to display_completed_todo(title)
  end
end