require 'rails_helper'

describe ProfilesController, type: :controller do
  describe '#index' do
    context 'show user profile' do
      def do_request
        get :index, user_id: user.id
      end

      let!(:user) { create(:user) }

      it 'render view :show' do
        do_request
        expect(assigns(:user)).to match user
        expect(response).to render_template :index
      end
    end
  end
end
