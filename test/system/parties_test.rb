require "application_system_test_case"

class PartiesTest < ApplicationSystemTestCase
  setup do
    @party = parties(:one)
  end

  test "visiting the index" do
    visit parties_url
    assert_selector "h1", text: "Parties"
  end

  test "should create partie" do
    visit parties_url
    click_on "New partie"

    fill_in "Commande", with: @party.commande_id
    fill_in "Nom", with: @party.nom
    fill_in "Prix", with: @party.prix
    fill_in "Stock", with: @party.stock
    fill_in "Voiture", with: @party.voiture_id
    click_on "Create Partie"

    assert_text "Partie was successfully created"
    click_on "Back"
  end

  test "should update Partie" do
    visit party_url(@party)
    click_on "Edit this partie", match: :first

    fill_in "Commande", with: @party.commande_id
    fill_in "Nom", with: @party.nom
    fill_in "Prix", with: @party.prix
    fill_in "Stock", with: @party.stock
    fill_in "Voiture", with: @party.voiture_id
    click_on "Update Partie"

    assert_text "Partie was successfully updated"
    click_on "Back"
  end

  test "should destroy Partie" do
    visit party_url(@party)
    click_on "Destroy this partie", match: :first

    assert_text "Partie was successfully destroyed"
  end
end
