require "application_system_test_case"

class MakeupsTest < ApplicationSystemTestCase
  setup do
    @makeup = makeups(:one)
  end

  test "visiting the index" do
    visit makeups_url
    assert_selector "h1", text: "Makeups"
  end

  test "should create makeup" do
    visit makeups_url
    click_on "New makeup"

    fill_in "Colour", with: @makeup.colour
    fill_in "Name", with: @makeup.name
    fill_in "Rating", with: @makeup.rating
    click_on "Create Makeup"

    assert_text "Makeup was successfully created"
    click_on "Back"
  end

  test "should update Makeup" do
    visit makeup_url(@makeup)
    click_on "Edit this makeup", match: :first

    fill_in "Colour", with: @makeup.colour
    fill_in "Name", with: @makeup.name
    fill_in "Rating", with: @makeup.rating
    click_on "Update Makeup"

    assert_text "Makeup was successfully updated"
    click_on "Back"
  end

  test "should destroy Makeup" do
    visit makeup_url(@makeup)
    click_on "Destroy this makeup", match: :first

    assert_text "Makeup was successfully destroyed"
  end
end
