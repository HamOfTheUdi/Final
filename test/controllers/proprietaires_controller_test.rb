require "test_helper"

class ProprietairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proprietaire = proprietaires(:one)
  end

  test "should get index" do
    get proprietaires_url
    assert_response :success
  end

  test "should get new" do
    get new_proprietaire_url
    assert_response :success
  end

  test "should create proprietaire" do
    assert_difference("Proprietaire.count") do
      post proprietaires_url, params: { proprietaire: { email: @proprietaire.email, nom: @proprietaire.nom, telephone: @proprietaire.telephone, voiture_id: @proprietaire.voiture_id } }
    end

    assert_redirected_to proprietaire_url(Proprietaire.last)
  end

  test "should show proprietaire" do
    get proprietaire_url(@proprietaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_proprietaire_url(@proprietaire)
    assert_response :success
  end

  test "should update proprietaire" do
    patch proprietaire_url(@proprietaire), params: { proprietaire: { email: @proprietaire.email, nom: @proprietaire.nom, telephone: @proprietaire.telephone, voiture_id: @proprietaire.voiture_id } }
    assert_redirected_to proprietaire_url(@proprietaire)
  end

  test "should destroy proprietaire" do
    assert_difference("Proprietaire.count", -1) do
      delete proprietaire_url(@proprietaire)
    end

    assert_redirected_to proprietaires_url
  end
end
