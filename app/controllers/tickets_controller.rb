class TicketsController < ApplicationController
  require 'will_paginate/array'

  def index
    # will_paginate gem takes in arrays
    @tickets = get_tickets.to_a
    @tickets = @tickets.paginate(page: params[:page], per_page: 25)
  end

  def show
    @ticket = get_tickets.find(id: params[:id])
  end

  private

  # Getting tickets from model
  def get_tickets
    User::TICKETS.tickets
  end
end
