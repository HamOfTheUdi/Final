require "test_helper"

class TransporteursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transporteur = transporteurs(:one)
  end

  test "should get index" do
    get transporteurs_url
    assert_response :success
  end

  test "should get new" do
    get new_transporteur_url
    assert_response :success
  end

  test "should create transporteur" do
    assert_difference("Transporteur.count") do
      post transporteurs_url, params: { transporteur: { email: @transporteur.email, nom: @transporteur.nom, telephone: @transporteur.telephone } }
    end

    assert_redirected_to transporteur_url(Transporteur.last)
  end

  test "should show transporteur" do
    get transporteur_url(@transporteur)
    assert_response :success
  end

  test "should get edit" do
    get edit_transporteur_url(@transporteur)
    assert_response :success
  end

  test "should update transporteur" do
    patch transporteur_url(@transporteur), params: { transporteur: { email: @transporteur.email, nom: @transporteur.nom, telephone: @transporteur.telephone } }
    assert_redirected_to transporteur_url(@transporteur)
  end

  test "should destroy transporteur" do
    assert_difference("Transporteur.count", -1) do
      delete transporteur_url(@transporteur)
    end

    assert_redirected_to transporteurs_url
  end
end
