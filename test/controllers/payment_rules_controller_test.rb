require 'test_helper'

class PaymentRulesControllerTest < ActionController::TestCase
  setup do
    @payment_rule = payment_rules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_rules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_rule" do
    assert_difference('PaymentRule.count') do
      post :create, payment_rule: { name: @payment_rule.name, percent: @payment_rule.percent, period: @payment_rule.period, since: @payment_rule.since }
    end

    assert_redirected_to payment_rule_path(assigns(:payment_rule))
  end

  test "should show payment_rule" do
    get :show, id: @payment_rule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_rule
    assert_response :success
  end

  test "should update payment_rule" do
    patch :update, id: @payment_rule, payment_rule: { name: @payment_rule.name, percent: @payment_rule.percent, period: @payment_rule.period, since: @payment_rule.since }
    assert_redirected_to payment_rule_path(assigns(:payment_rule))
  end

  test "should destroy payment_rule" do
    assert_difference('PaymentRule.count', -1) do
      delete :destroy, id: @payment_rule
    end

    assert_redirected_to payment_rules_path
  end
end
