require "application_system_test_case"

class TransporteursTest < ApplicationSystemTestCase
  setup do
    @transporteur = transporteurs(:one)
  end

  test "visiting the index" do
    visit transporteurs_url
    assert_selector "h1", text: "Transporteurs"
  end

  test "should create transporteur" do
    visit transporteurs_url
    click_on "New transporteur"

    fill_in "Email", with: @transporteur.email
    fill_in "Nom", with: @transporteur.nom
    fill_in "Telephone", with: @transporteur.telephone
    click_on "Create Transporteur"

    assert_text "Transporteur was successfully created"
    click_on "Back"
  end

  test "should update Transporteur" do
    visit transporteur_url(@transporteur)
    click_on "Edit this transporteur", match: :first

    fill_in "Email", with: @transporteur.email
    fill_in "Nom", with: @transporteur.nom
    fill_in "Telephone", with: @transporteur.telephone
    click_on "Update Transporteur"

    assert_text "Transporteur was successfully updated"
    click_on "Back"
  end

  test "should destroy Transporteur" do
    visit transporteur_url(@transporteur)
    click_on "Destroy this transporteur", match: :first

    assert_text "Transporteur was successfully destroyed"
  end
end
