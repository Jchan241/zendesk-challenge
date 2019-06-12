require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  test "visiting the root, should render index" do
    visit "/"
    assert_selector "h1", text: "Zendesk Ticket Viewer"
    assert_selector ".ticket-link", count: 25
  end

  test "visiting a ticket from index" do
    visit "/"
    click_link("1")
    assert_selector "h2", text: "Sample ticket: Meet the ticket"
  end

  test "clicking to different page" do
    visit "/"
    find(:xpath, "//a[@href='/?page=3']").click
    assert_selector 'p', text: "51"
  end

  test "clicking back from a ticket" do
    visit "/tickets/1"
    click_link("Back")
    assert_selector "h1", text: "Zendesk Ticket Viewer"
  end

  test "visiting a ticket that doesn't exist" do
    visit "/tickets/123456789"
    assert_selector "h3", text: "Record Not Found Error"
  end

end
