require 'test_helper'

class MPerfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_perfil = m_perfiles(:one)
  end

  test "should get index" do
    get m_perfiles_url
    assert_response :success
  end

  test "should get new" do
    get new_m_perfil_url
    assert_response :success
  end

  test "should create m_perfil" do
    assert_difference('MPerfil.count') do
      post m_perfiles_url, params: { m_perfil: {  } }
    end

    assert_redirected_to m_perfil_url(MPerfil.last)
  end

  test "should show m_perfil" do
    get m_perfil_url(@m_perfil)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_perfil_url(@m_perfil)
    assert_response :success
  end

  test "should update m_perfil" do
    patch m_perfil_url(@m_perfil), params: { m_perfil: {  } }
    assert_redirected_to m_perfil_url(@m_perfil)
  end

  test "should destroy m_perfil" do
    assert_difference('MPerfil.count', -1) do
      delete m_perfil_url(@m_perfil)
    end

    assert_redirected_to m_perfiles_url
  end
end
