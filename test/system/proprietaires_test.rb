require "application_system_test_case"

class ProprietairesTest < ApplicationSystemTestCase
  setup do
    @proprietaire = proprietaires(:one)
  end

  test "visiting the index" do
    visit proprietaires_url
    assert_selector "h1", text: "Proprietaires"
  end

  test "should create proprietaire" do
    visit proprietaires_url
    click_on "New proprietaire"

    fill_in "Email", with: @proprietaire.email
    fill_in "Nom", with: @proprietaire.nom
    fill_in "Telephone", with: @proprietaire.telephone
    fill_in "Voiture", with: @proprietaire.voiture_id
    click_on "Create Proprietaire"

    assert_text "Proprietaire was successfully created"
    click_on "Back"
  end

  test "should update Proprietaire" do
    visit proprietaire_url(@proprietaire)
    click_on "Edit this proprietaire", match: :first

    fill_in "Email", with: @proprietaire.email
    fill_in "Nom", with: @proprietaire.nom
    fill_in "Telephone", with: @proprietaire.telephone
    fill_in "Voiture", with: @proprietaire.voiture_id
    click_on "Update Proprietaire"

    assert_text "Proprietaire was successfully updated"
    click_on "Back"
  end

  test "should destroy Proprietaire" do
    visit proprietaire_url(@proprietaire)
    click_on "Destroy this proprietaire", match: :first

    assert_text "Proprietaire was successfully destroyed"
  end
end
