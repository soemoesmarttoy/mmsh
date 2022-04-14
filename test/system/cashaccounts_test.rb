require "application_system_test_case"

class CashaccountsTest < ApplicationSystemTestCase
  setup do
    @cashaccount = cashaccounts(:one)
  end

  test "visiting the index" do
    visit cashaccounts_url
    assert_selector "h1", text: "Cashaccounts"
  end

  test "should create cashaccount" do
    visit cashaccounts_url
    click_on "New cashaccount"

    fill_in "Amount", with: @cashaccount.amount
    fill_in "Name", with: @cashaccount.name
    click_on "Create Cashaccount"

    assert_text "Cashaccount was successfully created"
    click_on "Back"
  end

  test "should update Cashaccount" do
    visit cashaccount_url(@cashaccount)
    click_on "Edit this cashaccount", match: :first

    fill_in "Amount", with: @cashaccount.amount
    fill_in "Name", with: @cashaccount.name
    click_on "Update Cashaccount"

    assert_text "Cashaccount was successfully updated"
    click_on "Back"
  end

  test "should destroy Cashaccount" do
    visit cashaccount_url(@cashaccount)
    click_on "Destroy this cashaccount", match: :first

    assert_text "Cashaccount was successfully destroyed"
  end
end
