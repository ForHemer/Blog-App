require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  context 'GET /index' do
    before(:example) { get '/users/:user_id/posts' }

    it 'Check if response status is correct' do
      expect(response).to have_http_status(200)
      expect(response).to have_http_status(:ok)
    end

    it 'Check if the correct template is rendered' do
      expect(response).to render_template('index')
    end

    it 'Check if the response body includes the correct placeholder text' do
      expect(response.body).to include('Posts#index')
    end
  end

  context 'GET /show' do
    before(:example) { get '/users/:user_id/posts/:id' }

    it 'Check if response status is correct' do
      expect(response).to have_http_status(:ok)
      expect(response).to have_http_status(200)
    end

    it 'Check if the correct template is rendered' do
      expect(response).to render_template('show')
    end

    it 'Check if the response body includes the correct placeholder text' do
      expect(response.body).to include('Posts#show')
    end
  end
end
