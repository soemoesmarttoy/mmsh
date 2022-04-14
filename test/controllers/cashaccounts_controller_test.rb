require "test_helper"

class CashaccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cashaccount = cashaccounts(:one)
  end

  test "should get index" do
    get cashaccounts_url
    assert_response :success
  end

  test "should get new" do
    get new_cashaccount_url
    assert_response :success
  end

  test "should create cashaccount" do
    assert_difference("Cashaccount.count") do
      post cashaccounts_url, params: { cashaccount: { amount: @cashaccount.amount, name: @cashaccount.name } }
    end

    assert_redirected_to cashaccount_url(Cashaccount.last)
  end

  test "should show cashaccount" do
    get cashaccount_url(@cashaccount)
    assert_response :success
  end

  test "should get edit" do
    get edit_cashaccount_url(@cashaccount)
    assert_response :success
  end

  test "should update cashaccount" do
    patch cashaccount_url(@cashaccount), params: { cashaccount: { amount: @cashaccount.amount, name: @cashaccount.name } }
    assert_redirected_to cashaccount_url(@cashaccount)
  end

  test "should destroy cashaccount" do
    assert_difference("Cashaccount.count", -1) do
      delete cashaccount_url(@cashaccount)
    end

    assert_redirected_to cashaccounts_url
  end
end
