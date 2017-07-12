require 'test_helper'

class GeolosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geolo = geolos(:one)
  end

  test "should get index" do
    get geolos_url
    assert_response :success
  end

  test "should get new" do
    get new_geolo_url
    assert_response :success
  end

  test "should create geolo" do
    assert_difference('Geolo.count') do
      post geolos_url, params: { geolo: { address: @geolo.address, description: @geolo.description, latitude: @geolo.latitude, longitude: @geolo.longitude, title: @geolo.title } }
    end

    assert_redirected_to geolo_url(Geolo.last)
  end

  test "should show geolo" do
    get geolo_url(@geolo)
    assert_response :success
  end

  test "should get edit" do
    get edit_geolo_url(@geolo)
    assert_response :success
  end

  test "should update geolo" do
    patch geolo_url(@geolo), params: { geolo: { address: @geolo.address, description: @geolo.description, latitude: @geolo.latitude, longitude: @geolo.longitude, title: @geolo.title } }
    assert_redirected_to geolo_url(@geolo)
  end

  test "should destroy geolo" do
    assert_difference('Geolo.count', -1) do
      delete geolo_url(@geolo)
    end

    assert_redirected_to geolos_url
  end
end
