require 'rails_helper'

RSpec.describe TicketsController, type: :controller do
    context 'index' do
      it 'should return 100 tickets' do
        get :index
        expect(assigns(:tickets)).to be_present
      end
    end


end
