require 'test_helper'

class AutoTellerMachinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_teller_machine = auto_teller_machines(:one)
  end

  test "should get index" do
    get auto_teller_machines_url
    assert_response :success
  end

  test "should get new" do
    get new_auto_teller_machine_url
    assert_response :success
  end

  test "should create auto_teller_machine" do
    assert_difference('AutoTellerMachine.count') do
      post auto_teller_machines_url, params: { auto_teller_machine: {  } }
    end

    assert_redirected_to auto_teller_machine_url(AutoTellerMachine.last)
  end

  test "should show auto_teller_machine" do
    get auto_teller_machine_url(@auto_teller_machine)
    assert_response :success
  end

  test "should get edit" do
    get edit_auto_teller_machine_url(@auto_teller_machine)
    assert_response :success
  end

  test "should update auto_teller_machine" do
    patch auto_teller_machine_url(@auto_teller_machine), params: { auto_teller_machine: {  } }
    assert_redirected_to auto_teller_machine_url(@auto_teller_machine)
  end

  test "should destroy auto_teller_machine" do
    assert_difference('AutoTellerMachine.count', -1) do
      delete auto_teller_machine_url(@auto_teller_machine)
    end

    assert_redirected_to auto_teller_machines_url
  end
end
