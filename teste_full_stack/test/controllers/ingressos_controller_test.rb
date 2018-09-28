require 'test_helper'

class IngressosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingresso = ingressos(:one)
  end

  test "should get index" do
    get ingressos_url
    assert_response :success
  end

  test "should get new" do
    get new_ingresso_url
    assert_response :success
  end

  test "should create ingresso" do
    assert_difference('Ingresso.count') do
      post ingressos_url, params: { ingresso: { data: @ingresso.data, nome: @ingresso.nome, preco: @ingresso.preco, taxa: @ingresso.taxa } }
    end

    assert_redirected_to ingresso_url(Ingresso.last)
  end

  test "should show ingresso" do
    get ingresso_url(@ingresso)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingresso_url(@ingresso)
    assert_response :success
  end

  test "should update ingresso" do
    patch ingresso_url(@ingresso), params: { ingresso: { data: @ingresso.data, nome: @ingresso.nome, preco: @ingresso.preco, taxa: @ingresso.taxa } }
    assert_redirected_to ingresso_url(@ingresso)
  end

  test "should destroy ingresso" do
    assert_difference('Ingresso.count', -1) do
      delete ingresso_url(@ingresso)
    end

    assert_redirected_to ingressos_url
  end
end
