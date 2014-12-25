module Acme
  class Ping < Grape::API
    version 'v1'
    resources :foos do
      desc 'Returns pong.'
      get :ping do
        { ping: params[:pong] || 'pong' }
      end
    end
  end
end
