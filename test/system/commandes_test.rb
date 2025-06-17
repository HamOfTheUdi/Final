require "application_system_test_case"

class CommandesTest < ApplicationSystemTestCase
  setup do
    @commande = commandes(:one)
  end

  test "visiting the index" do
    visit commandes_url
    assert_selector "h1", text: "Commandes"
  end

  test "should create commande" do
    visit commandes_url
    click_on "New commande"

    fill_in "Date", with: @commande.date
    fill_in "Fournisseurs", with: @commande.fournisseurs_id
    fill_in "Partie", with: @commande.partie_id
    fill_in "Transporteur", with: @commande.transporteur_id
    click_on "Create Commande"

    assert_text "Commande was successfully created"
    click_on "Back"
  end

  test "should update Commande" do
    visit commande_url(@commande)
    click_on "Edit this commande", match: :first

    fill_in "Date", with: @commande.date
    fill_in "Fournisseurs", with: @commande.fournisseurs_id
    fill_in "Partie", with: @commande.partie_id
    fill_in "Transporteur", with: @commande.transporteur_id
    click_on "Update Commande"

    assert_text "Commande was successfully updated"
    click_on "Back"
  end

  test "should destroy Commande" do
    visit commande_url(@commande)
    click_on "Destroy this commande", match: :first

    assert_text "Commande was successfully destroyed"
  end
end
