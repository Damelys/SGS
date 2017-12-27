require 'test_helper'

class MCargosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_cargo = m_cargos(:one)
  end

  test "should get index" do
    get m_cargos_url
    assert_response :success
  end

  test "should get new" do
    get new_m_cargo_url
    assert_response :success
  end

  test "should create m_cargo" do
    assert_difference('MCargo.count') do
      post m_cargos_url, params: { m_cargo: {  } }
    end

    assert_redirected_to m_cargo_url(MCargo.last)
  end

  test "should show m_cargo" do
    get m_cargo_url(@m_cargo)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_cargo_url(@m_cargo)
    assert_response :success
  end

  test "should update m_cargo" do
    patch m_cargo_url(@m_cargo), params: { m_cargo: {  } }
    assert_redirected_to m_cargo_url(@m_cargo)
  end

  test "should destroy m_cargo" do
    assert_difference('MCargo.count', -1) do
      delete m_cargo_url(@m_cargo)
    end

    assert_redirected_to m_cargos_url
  end
end
