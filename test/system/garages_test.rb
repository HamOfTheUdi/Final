require "application_system_test_case"

class GaragesTest < ApplicationSystemTestCase
  setup do
    @garage = garages(:one)
  end

  test "visiting the index" do
    visit garages_url
    assert_selector "h1", text: "Garages"
  end

  test "should create garage" do
    visit garages_url
    click_on "New garage"

    fill_in "Adresse", with: @garage.adresse
    fill_in "Capacite", with: @garage.capacite
    fill_in "Nom", with: @garage.nom
    click_on "Create Garage"

    assert_text "Garage was successfully created"
    click_on "Back"
  end

  test "should update Garage" do
    visit garage_url(@garage)
    click_on "Edit this garage", match: :first

    fill_in "Adresse", with: @garage.adresse
    fill_in "Capacite", with: @garage.capacite
    fill_in "Nom", with: @garage.nom
    click_on "Update Garage"

    assert_text "Garage was successfully updated"
    click_on "Back"
  end

  test "should destroy Garage" do
    visit garage_url(@garage)
    click_on "Destroy this garage", match: :first

    assert_text "Garage was successfully destroyed"
  end
end
