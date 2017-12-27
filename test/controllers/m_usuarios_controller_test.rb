require 'test_helper'

class MUsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_usuario = m_usuarios(:one)
  end

  test "should get index" do
    get m_usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_m_usuario_url
    assert_response :success
  end

  test "should create m_usuario" do
    assert_difference('MUsuario.count') do
      post m_usuarios_url, params: { m_usuario: {  } }
    end

    assert_redirected_to m_usuario_url(MUsuario.last)
  end

  test "should show m_usuario" do
    get m_usuario_url(@m_usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_usuario_url(@m_usuario)
    assert_response :success
  end

  test "should update m_usuario" do
    patch m_usuario_url(@m_usuario), params: { m_usuario: {  } }
    assert_redirected_to m_usuario_url(@m_usuario)
  end

  test "should destroy m_usuario" do
    assert_difference('MUsuario.count', -1) do
      delete m_usuario_url(@m_usuario)
    end

    assert_redirected_to m_usuarios_url
  end
end
