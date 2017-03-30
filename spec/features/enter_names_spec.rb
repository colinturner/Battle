
feature "Enter names" do
  scenario "submitting names" do
    visit '/'
    sign_in_and_play
    # visit '/names-submit'
    # save_and_open_page
    expect(page).to have_content('Volkswagen vs Polar Bear BATTLE BEGINS!!!')
  end

  scenario "lets Player 1 see Player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Volkswagen: 100HP")
  end

  scenario "lets Player 1 see Player 2's health bar" do
    sign_in_and_play
    expect(page).to have_css("progress#health_bar_p2")
  end

  scenario "chooses a player to start first attack" do
    sign_in_and_play
    expect(page).to have_content("Volkswagen's turn to attack")
  end
end
