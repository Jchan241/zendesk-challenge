# Unable to get will_paginate with only gem
require 'will_paginate/array'

class TicketsController < ApplicationController

  def index
    # will_paginate gem only takes in arrays
    @tickets = get_tickets.to_a
    @tickets = @tickets.paginate(page: params[:page], per_page: 25)
  end

  def show
    # .find method from zendesk API
    @ticket = get_tickets.find(id: params[:id])
  end

  private

  # Getting tickets from model
  # RESTULTS constant - results from zendesk API
  # .tickets - getting all the data inside key "tickets" from RESULTS
  def get_tickets
    Ticket::RESULTS.tickets
  end
end
