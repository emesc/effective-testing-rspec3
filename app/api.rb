require 'sinatra/base'
require 'json'

module ExpenseTracker
  class API < Sinatra::Base
    post '/expenses' do
      # send some JSON formatted text; otherwise post will return an empty string back to the client
      JSON.generate({ 'expense_id' => 42 })
    end

    # let's define a way for our clients to read data
    get '/expenses/:date' do
      JSON.generate([])
    end
  end
end
