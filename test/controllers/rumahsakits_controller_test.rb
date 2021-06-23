require "test_helper"

class RumahsakitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rumahsakit = rumahsakits(:one)
  end

  test "should get index" do
    get rumahsakits_url, as: :json
    assert_response :success
  end

  test "should create rumahsakit" do
    assert_difference('Rumahsakit.count') do
      post rumahsakits_url, params: { rumahsakit: { nama: @rumahsakit.nama } }, as: :json
    end

    assert_response 201
  end

  test "should show rumahsakit" do
    get rumahsakit_url(@rumahsakit), as: :json
    assert_response :success
  end

  test "should update rumahsakit" do
    patch rumahsakit_url(@rumahsakit), params: { rumahsakit: { nama: @rumahsakit.nama } }, as: :json
    assert_response 200
  end

  test "should destroy rumahsakit" do
    assert_difference('Rumahsakit.count', -1) do
      delete rumahsakit_url(@rumahsakit), as: :json
    end

    assert_response 204
  end
end
