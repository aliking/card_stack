require 'sinatra/base'
require_relative 'lib/card_id.rb'

class CardStack < Sinatra::Base

  get '/' do
    erb :index
  end
 
  get '/:num' do
    @steps = CardId.steps(params[:num])
    erb :index
    end
end
