require "application_system_test_case"

class MobilesTest < ApplicationSystemTestCase
  setup do
    @mobile = mobiles(:one)
  end

  test "visiting the index" do
    visit mobiles_url
    assert_selector "h1", text: "Mobiles"
  end

  test "creating a Mobile" do
    visit mobiles_url
    click_on "New Mobile"

    fill_in "Brand", with: @mobile.brand
    fill_in "Camera", with: @mobile.camera
    fill_in "Internalstorage", with: @mobile.internalstorage
    fill_in "Mpixel", with: @mobile.mpixel
    fill_in "Name", with: @mobile.name
    fill_in "Os", with: @mobile.os
    fill_in "Screen Size", with: @mobile.screen_size
    fill_in "Simslots", with: @mobile.simslots
    fill_in "Stock Num", with: @mobile.stock_num
    fill_in "Year Released", with: @mobile.year_released
    click_on "Create Mobile"

    assert_text "Mobile was successfully created"
    click_on "Back"
  end

  test "updating a Mobile" do
    visit mobiles_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @mobile.brand
    fill_in "Camera", with: @mobile.camera
    fill_in "Internalstorage", with: @mobile.internalstorage
    fill_in "Mpixel", with: @mobile.mpixel
    fill_in "Name", with: @mobile.name
    fill_in "Os", with: @mobile.os
    fill_in "Screen Size", with: @mobile.screen_size
    fill_in "Simslots", with: @mobile.simslots
    fill_in "Stock Num", with: @mobile.stock_num
    fill_in "Year Released", with: @mobile.year_released
    click_on "Update Mobile"

    assert_text "Mobile was successfully updated"
    click_on "Back"
  end

  test "destroying a Mobile" do
    visit mobiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mobile was successfully destroyed"
  end
end
