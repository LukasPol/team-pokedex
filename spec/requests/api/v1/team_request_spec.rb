require 'rails_helper'

RSpec.describe '/api/v1/teams', type: :request do
  let!(:trainer) { create(:trainer) }
  before { sign_in(trainer) }

  let!(:team) { create(:team) }

  let!(:valid_attributes) { build(:team).attributes }

  describe 'GET /index' do
    it 'renders a successful response' do
      get api_v1_teams_url
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new team' do
        expect {
          post api_v1_teams_url, params: { team: valid_attributes }
        }.to change(Team, :count).by(1)
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Team' do
        expect {
          post api_v1_teams_url, params: { team: { name: nil } }
        }.to change(Team, :count).by(0)
      end

      it "renders a erro 422" do
        post api_v1_teams_url, params: { team: { name: nil } }
        expect(response).to have_http_status(422)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) { build(:team).attributes }

      it 'updates the requested team' do
        patch api_v1_team_url(team), params: { team: new_attributes }
        team.reload
        expect(team.name).to eq(new_attributes['name'])
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested team' do
      expect {
        delete api_v1_team_url(team)
      }.to change(Team, :count).by(-1)
    end
  end
end