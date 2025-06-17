require "test_helper"

class InfoCommandesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @info_commande = info_commandes(:one)
  end

  test "should get index" do
    get info_commandes_url
    assert_response :success
  end

  test "should get new" do
    get new_info_commande_url
    assert_response :success
  end

  test "should create info_commande" do
    assert_difference("InfoCommande.count") do
      post info_commandes_url, params: { info_commande: { commande_id: @info_commande.commande_id, details: @info_commande.details, raison_retard: @info_commande.raison_retard, statut: @info_commande.statut } }
    end

    assert_redirected_to info_commande_url(InfoCommande.last)
  end

  test "should show info_commande" do
    get info_commande_url(@info_commande)
    assert_response :success
  end

  test "should get edit" do
    get edit_info_commande_url(@info_commande)
    assert_response :success
  end

  test "should update info_commande" do
    patch info_commande_url(@info_commande), params: { info_commande: { commande_id: @info_commande.commande_id, details: @info_commande.details, raison_retard: @info_commande.raison_retard, statut: @info_commande.statut } }
    assert_redirected_to info_commande_url(@info_commande)
  end

  test "should destroy info_commande" do
    assert_difference("InfoCommande.count", -1) do
      delete info_commande_url(@info_commande)
    end

    assert_redirected_to info_commandes_url
  end
end
