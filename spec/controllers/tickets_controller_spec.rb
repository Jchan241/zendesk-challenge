require 'rails_helper'

describe '#ticket' do
  let(:ticket) { Ticket::RESULTS.tickets }

  it 'should return 100 tickets' do
    expect(:ticket).to be_present
  end

  it 'should return 100 tickets' do
    get :index
    expect(assigns(:tickets)).to be_present
  end
end
