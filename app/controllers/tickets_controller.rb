class TicketsController < ApplicationController
require 'will_paginate/array'

  def index
    @tickets = get_tickets.tickets.to_a
    @tickets = @tickets.paginate(page: params[:page], per_page: 25)
  end

  private

  def get_tickets
    User::TICKETS
  end
end
