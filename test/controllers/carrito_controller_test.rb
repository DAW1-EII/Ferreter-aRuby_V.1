require 'test_helper'

class CarritoControllerTest < ActionDispatch::IntegrationTest
  test "should get compra" do
    get carrito_compra_url
    assert_response :success
  end

end
