require "application_system_test_case"

class VoituresTest < ApplicationSystemTestCase
  setup do
    @voiture = voitures(:one)
  end

  test "visiting the index" do
    visit voitures_url
    assert_selector "h1", text: "Voitures"
  end

  test "should create voiture" do
    visit voitures_url
    click_on "New voiture"

    fill_in "Anee", with: @voiture.anee
    fill_in "Couleur", with: @voiture.couleur
    fill_in "Garage", with: @voiture.garage_id
    fill_in "Marque", with: @voiture.marque
    fill_in "Numero immatriculation", with: @voiture.numero_immatriculation
    fill_in "Proprietaire", with: @voiture.proprietaire
    fill_in "Statut", with: @voiture.statut
    click_on "Create Voiture"

    assert_text "Voiture was successfully created"
    click_on "Back"
  end

  test "should update Voiture" do
    visit voiture_url(@voiture)
    click_on "Edit this voiture", match: :first

    fill_in "Anee", with: @voiture.anee
    fill_in "Couleur", with: @voiture.couleur
    fill_in "Garage", with: @voiture.garage_id
    fill_in "Marque", with: @voiture.marque
    fill_in "Numero immatriculation", with: @voiture.numero_immatriculation
    fill_in "Proprietaire", with: @voiture.proprietaire
    fill_in "Statut", with: @voiture.statut
    click_on "Update Voiture"

    assert_text "Voiture was successfully updated"
    click_on "Back"
  end

  test "should destroy Voiture" do
    visit voiture_url(@voiture)
    click_on "Destroy this voiture", match: :first

    assert_text "Voiture was successfully destroyed"
  end
end
