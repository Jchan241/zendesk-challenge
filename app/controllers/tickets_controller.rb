# Unable to get will_paginate with only gem
require "will_paginate/array"

class TicketsController < ApplicationController
  # Redirects to render friendly error handling pages
  rescue_from ZendeskAPI::Error::RecordNotFound, with: :error_not_found
  rescue_from ZendeskAPI::Error::NetworkError, with: :error_network
  rescue_from StandardError, with: :error_network


  def index
    # will_paginate gem only takes in arrays
    @tickets = get_tickets.to_a
    @tickets = @tickets.paginate(page: params[:page], per_page: 25)
  end

  def show
    # .find! method from zendesk API
    @ticket = get_tickets.find!(id: params[:id])
  end

  private

  # Getting tickets from model
  # RESTULTS constant - results from zendesk API
  # .tickets - getting all the data inside key "tickets" from RESULTS
  def get_tickets
    Ticket::RESULTS.tickets
  end

  # renders error pages based on the type of error
  def error_not_found
    render "tickets/errors/not-found-error"
  end

  def error_network
    render "tickets/errors/network-error"
  end

  def standard_error
    render "tickets/errors/standard-error"
  end
end
