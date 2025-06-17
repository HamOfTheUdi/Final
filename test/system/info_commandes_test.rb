require "application_system_test_case"

class InfoCommandesTest < ApplicationSystemTestCase
  setup do
    @info_commande = info_commandes(:one)
  end

  test "visiting the index" do
    visit info_commandes_url
    assert_selector "h1", text: "Info commandes"
  end

  test "should create info commande" do
    visit info_commandes_url
    click_on "New info commande"

    fill_in "Commande", with: @info_commande.commande_id
    fill_in "Details", with: @info_commande.details
    fill_in "Raison retard", with: @info_commande.raison_retard
    fill_in "Statut", with: @info_commande.statut
    click_on "Create Info commande"

    assert_text "Info commande was successfully created"
    click_on "Back"
  end

  test "should update Info commande" do
    visit info_commande_url(@info_commande)
    click_on "Edit this info commande", match: :first

    fill_in "Commande", with: @info_commande.commande_id
    fill_in "Details", with: @info_commande.details
    fill_in "Raison retard", with: @info_commande.raison_retard
    fill_in "Statut", with: @info_commande.statut
    click_on "Update Info commande"

    assert_text "Info commande was successfully updated"
    click_on "Back"
  end

  test "should destroy Info commande" do
    visit info_commande_url(@info_commande)
    click_on "Destroy this info commande", match: :first

    assert_text "Info commande was successfully destroyed"
  end
end
