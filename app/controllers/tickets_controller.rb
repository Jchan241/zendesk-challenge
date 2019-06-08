class TicketsController < ApplicationController
require 'will_paginate/array'

  def index
    @tickets = get_tickets.to_a
    @tickets = @tickets.paginate(page: params[:page], per_page: 25)
  end

  def show
    @ticket = get_tickets.find(id: params[:id])
  end

  private

  def get_tickets
    Ticket::TICKETS.tickets
  end
end
