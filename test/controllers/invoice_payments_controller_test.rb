require 'test_helper'

class InvoicePaymentsControllerTest < ActionController::TestCase
  test "should get pay" do
    get :pay
    assert_response :success
  end

  test "should get unpay" do
    get :unpay
    assert_response :success
  end

end
