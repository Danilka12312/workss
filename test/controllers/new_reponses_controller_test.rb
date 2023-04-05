require "test_helper"

class NewReponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_reponse = new_reponses(:one)
  end

  test "should get index" do
    get new_reponses_url
    assert_response :success
  end

  test "should get new" do
    get new_new_reponse_url
    assert_response :success
  end

  test "should create new_reponse" do
    assert_difference("NewReponse.count") do
      post new_reponses_url, params: { new_reponse: { name: @new_reponse.name, name_work: @new_reponse.name_work, phone: @new_reponse.phone, vk: @new_reponse.vk } }
    end

    assert_redirected_to new_reponse_url(NewReponse.last)
  end

  test "should show new_reponse" do
    get new_reponse_url(@new_reponse)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_reponse_url(@new_reponse)
    assert_response :success
  end

  test "should update new_reponse" do
    patch new_reponse_url(@new_reponse), params: { new_reponse: { name: @new_reponse.name, name_work: @new_reponse.name_work, phone: @new_reponse.phone, vk: @new_reponse.vk } }
    assert_redirected_to new_reponse_url(@new_reponse)
  end

  test "should destroy new_reponse" do
    assert_difference("NewReponse.count", -1) do
      delete new_reponse_url(@new_reponse)
    end

    assert_redirected_to new_reponses_url
  end
end
