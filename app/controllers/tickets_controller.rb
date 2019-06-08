class TicketsController < ApplicationController
  def index
    @tickets = User::TICKETS.tickets
  end
end
