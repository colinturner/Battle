feature 'attack player' do
  scenario 'attack a player' do
    sign_in_and_play
    click_link "Cheat emissions test!"
    expect(page).to have_content "Volkswagen used Cheat Emissions. It's super effective! Polar Bear -10 HP. Polar Bear: 90 HP"
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Cheat emissions test!'
    expect(page).not_to have_content 'Polar Bear: 100HP'
    expect(page).to have_content 'Polar Bear: 90 HP'
  end
end
