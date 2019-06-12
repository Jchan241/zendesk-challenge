require "test_helper"

class TicketsControllerTest < ActionDispatch::IntegrationTest
  tickets = Ticket::RESULTS.tickets

  test "Getting all tickets from zendesk api" do
    assert_equal( 100, tickets.size )
  end

  test "tickets is a type of zendesk api collection" do
    assert_kind_of(ZendeskAPI::Collection, tickets)
  end
end
