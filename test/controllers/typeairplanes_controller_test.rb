require 'test_helper'

class TypeairplanesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typeairplane = typeairplanes(:one)
  end

  test "should get index" do
    get typeairplanes_url
    assert_response :success
  end

  test "should get new" do
    get new_typeairplane_url
    assert_response :success
  end

  test "should create typeairplane" do
    assert_difference('Typeairplane.count') do
      post typeairplanes_url, params: { typeairplane: { tipo: @typeairplane.tipo } }
    end

    assert_redirected_to typeairplane_url(Typeairplane.last)
  end

  test "should show typeairplane" do
    get typeairplane_url(@typeairplane)
    assert_response :success
  end

  test "should get edit" do
    get edit_typeairplane_url(@typeairplane)
    assert_response :success
  end

  test "should update typeairplane" do
    patch typeairplane_url(@typeairplane), params: { typeairplane: { tipo: @typeairplane.tipo } }
    assert_redirected_to typeairplane_url(@typeairplane)
  end

  test "should destroy typeairplane" do
    assert_difference('Typeairplane.count', -1) do
      delete typeairplane_url(@typeairplane)
    end

    assert_redirected_to typeairplanes_url
  end
end
