require 'test_helper'

class VoipsControllerTest < ActionController::TestCase
  setup do
    @voip = voips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voip" do
    assert_difference('Voip.count') do
      post :create, voip: { client_id: @voip.client_id, comments: @voip.comments, gateway: @voip.gateway, gatewayip: @voip.gatewayip, line: @voip.line, number: @voip.number, prefix: @voip.prefix, protocol: @voip.protocol, restrictions: @voip.restrictions, uid: @voip.uid }
    end

    assert_redirected_to voip_path(assigns(:voip))
  end

  test "should show voip" do
    get :show, id: @voip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voip
    assert_response :success
  end

  test "should update voip" do
    patch :update, id: @voip, voip: { client_id: @voip.client_id, comments: @voip.comments, gateway: @voip.gateway, gatewayip: @voip.gatewayip, line: @voip.line, number: @voip.number, prefix: @voip.prefix, protocol: @voip.protocol, restrictions: @voip.restrictions, uid: @voip.uid }
    assert_redirected_to voip_path(assigns(:voip))
  end

  test "should destroy voip" do
    assert_difference('Voip.count', -1) do
      delete :destroy, id: @voip
    end

    assert_redirected_to voips_path
  end
end
