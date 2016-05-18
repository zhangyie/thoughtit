require 'test_helper'

class IncomeplansControllerTest < ActionController::TestCase
  setup do
    @incomeplan = incomeplans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incomeplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incomeplan" do
    assert_difference('Incomeplan.count') do
      post :create, incomeplan: { contract_id: @incomeplan.contract_id, idate: @incomeplan.idate, iprice: @incomeplan.iprice, ititle: @incomeplan.ititle }
    end

    assert_redirected_to incomeplan_path(assigns(:incomeplan))
  end

  test "should show incomeplan" do
    get :show, id: @incomeplan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incomeplan
    assert_response :success
  end

  test "should update incomeplan" do
    patch :update, id: @incomeplan, incomeplan: { contract_id: @incomeplan.contract_id, idate: @incomeplan.idate, iprice: @incomeplan.iprice, ititle: @incomeplan.ititle }
    assert_redirected_to incomeplan_path(assigns(:incomeplan))
  end

  test "should destroy incomeplan" do
    assert_difference('Incomeplan.count', -1) do
      delete :destroy, id: @incomeplan
    end

    assert_redirected_to incomeplans_path
  end
end
