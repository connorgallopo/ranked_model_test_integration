require "application_system_test_case"

class BacklogItemsTest < ApplicationSystemTestCase
  setup do
    @backlog_item = backlog_items(:one)
  end

  test "visiting the index" do
    visit backlog_items_url
    assert_selector "h1", text: "Backlog Items"
  end

  test "creating a Backlog item" do
    visit backlog_items_url
    click_on "New Backlog Item"

    click_on "Create Backlog item"

    assert_text "Backlog item was successfully created"
    click_on "Back"
  end

  test "updating a Backlog item" do
    visit backlog_items_url
    click_on "Edit", match: :first

    click_on "Update Backlog item"

    assert_text "Backlog item was successfully updated"
    click_on "Back"
  end

  test "destroying a Backlog item" do
    visit backlog_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Backlog item was successfully destroyed"
  end
end
