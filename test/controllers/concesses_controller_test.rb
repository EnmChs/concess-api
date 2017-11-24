require 'test_helper'

class ConcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concess = concesses(:one)
  end

  test "should get index" do
    get concesses_url, as: :json
    assert_response :success
  end

  test "should create concess" do
    assert_difference('Concess.count') do
      post concesses_url, params: { concess: { address: @concess.address, aprox_num: @concess.aprox_num, cars_type: @concess.cars_type, close_time: @concess.close_time, contact_number: @concess.contact_number, name: @concess.name, open_time: @concess.open_time, warranty: @concess.warranty } }, as: :json
    end

    assert_response 201
  end

  test "should show concess" do
    get concess_url(@concess), as: :json
    assert_response :success
  end

  test "should update concess" do
    patch concess_url(@concess), params: { concess: { address: @concess.address, aprox_num: @concess.aprox_num, cars_type: @concess.cars_type, close_time: @concess.close_time, contact_number: @concess.contact_number, name: @concess.name, open_time: @concess.open_time, warranty: @concess.warranty } }, as: :json
    assert_response 200
  end

  test "should destroy concess" do
    assert_difference('Concess.count', -1) do
      delete concess_url(@concess), as: :json
    end

    assert_response 204
  end
end
