feature 'attack player' do
  scenario 'attack a player' do
    sign_in_and_play
    click_link "Cheat emissions test!"
    expect(page).to have_content "Volkswagen used Cheat Emissions. It's super effective! Polar Bear -10 HP. Polar Bear: 90 HP"
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link "Cheat emissions test!"
    expect(page).not_to have_content 'Polar Bear: 100HP'
    expect(page).to have_content 'Polar Bear: 90 HP'
  end

  scenario 'switch attacking player' do
    sign_in_and_play
    click_link "Cheat emissions test!"
    click_link 'Return to battlefield'
    expect(page).to have_content "Polar Bear's turn to attack"
  end

  scenario "return to play page from attack page" do
    sign_in_and_play
    click_link "Cheat emissions test!"
    click_link 'Return to battlefield'
    expect(page).to have_content "turn to attack"
  end

end
