require 'rails_helper'

describe PostsController, type: :controller do
  describe '#show' do
    context 'show post' do
      def do_request
        get :show, id: post
      end

      let!(:post) { create(:post) }

      it 'render view :show' do
        do_request
        expect(assigns(:post)).to match post
        expect(response).to render_template :show
      end
    end
  end
end
