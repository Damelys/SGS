require 'test_helper'

class MEmpleadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @m_empleado = m_empleados(:one)
  end

  test "should get index" do
    get m_empleados_url
    assert_response :success
  end

  test "should get new" do
    get new_m_empleado_url
    assert_response :success
  end

  test "should create m_empleado" do
    assert_difference('MEmpleado.count') do
      post m_empleados_url, params: { m_empleado: {  } }
    end

    assert_redirected_to m_empleado_url(MEmpleado.last)
  end

  test "should show m_empleado" do
    get m_empleado_url(@m_empleado)
    assert_response :success
  end

  test "should get edit" do
    get edit_m_empleado_url(@m_empleado)
    assert_response :success
  end

  test "should update m_empleado" do
    patch m_empleado_url(@m_empleado), params: { m_empleado: {  } }
    assert_redirected_to m_empleado_url(@m_empleado)
  end

  test "should destroy m_empleado" do
    assert_difference('MEmpleado.count', -1) do
      delete m_empleado_url(@m_empleado)
    end

    assert_redirected_to m_empleados_url
  end
end
