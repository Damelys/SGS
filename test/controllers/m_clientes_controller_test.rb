require 'test_helper'

class MClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_cliente = m_clientes(:one)
  end

  test "should get index" do
    get m_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_m_cliente_url
    assert_response :success
  end

  test "should create m_cliente" do
    assert_difference('MCliente.count') do
      post m_clientes_url, params: { m_cliente: {  } }
    end

    assert_redirected_to m_cliente_url(MCliente.last)
  end

  test "should show m_cliente" do
    get m_cliente_url(@m_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_cliente_url(@m_cliente)
    assert_response :success
  end

  test "should update m_cliente" do
    patch m_cliente_url(@m_cliente), params: { m_cliente: {  } }
    assert_redirected_to m_cliente_url(@m_cliente)
  end

  test "should destroy m_cliente" do
    assert_difference('MCliente.count', -1) do
      delete m_cliente_url(@m_cliente)
    end

    assert_redirected_to m_clientes_url
  end
end
