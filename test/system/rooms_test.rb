require "application_system_test_case"

class RoomsTest < ApplicationSystemTestCase
  setup do
    @room = rooms(:one)
  end

  test "visiting the index" do
    visit rooms_url
    assert_selector "h1", text: "Rooms"
  end

  test "creating a Room" do
    visit rooms_url
    click_on "New Room"

    check "Availabilty" if @room.availabilty
    fill_in "Floor", with: @room.floor
    fill_in "Image", with: @room.image
    fill_in "Price", with: @room.price
    fill_in "Room no", with: @room.room_no
    click_on "Create Room"

    assert_text "Room was successfully created"
    click_on "Back"
  end

  test "updating a Room" do
    visit rooms_url
    click_on "Edit", match: :first

    check "Availabilty" if @room.availabilty
    fill_in "Floor", with: @room.floor
    fill_in "Image", with: @room.image
    fill_in "Price", with: @room.price
    fill_in "Room no", with: @room.room_no
    click_on "Update Room"

    assert_text "Room was successfully updated"
    click_on "Back"
  end

  test "destroying a Room" do
    visit rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room was successfully destroyed"
  end
end
