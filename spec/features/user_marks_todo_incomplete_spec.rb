feature "User marks todo incomplete" do
  scenario "successfully" do
    title = "comprar arroz"
    sign_in
    create_todo(title)
    click_on "Mark complete"
    click_on "Mark incomplete"
    expect(page).to_not display_completed_todo(title)
  end
end