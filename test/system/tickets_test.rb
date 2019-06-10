require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  test "visiting the root, should render index" do
    visit "/"
    assert_selector "h1", text: "Zendesk Ticket Viewer"
    assert_selector ".ticket-link", count: 25
  end

  test "visiting a ticket that doesn't exist" do
    visit "/tickets/123456789"
    assert_selector "h3", text: "Record Not Found Error"
  end
end
