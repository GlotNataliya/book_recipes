# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContentsController, type: :controller do
  let!(:content) { FactoryBot.create :content }
  let(:param) { { content: { title: 'test title' } } }
  let(:attr) { { title: 'new title' } }

  # index action
  describe 'GET #index' do
    before do
      get :index
    end

    it 'is expected to assign content instance variable' do
      expect(assigns[:contents]).to eq(Content.all)
    end
  end

  # show action
  describe 'GET #show' do
    before do
      get :show, params: { id: content.id }
    end

    it 'assigns the content' do
      expect(assigns(:content)).not_to be_nil
    end
  end

  # new action
  describe 'GET #new' do
    before do
      get :new
    end

    it 'is expected to assign content as new instance variable' do
      expect(assigns(:content)).to be_a_new(Content)
    end

    it 'renders new template' do
      is_expected.to render_template(:new)
    end

    it 'renders application layout' do
      is_expected.to render_template(:application)
    end
  end

  # create action
  describe 'POST #create' do
    before do
      post :create, params: param
    end

    it 'is expected to create new content successfully' do
      expect(assigns[:content]).to be_instance_of(Content)
    end

    it 'is expected to have title assigned to it' do
      expect(assigns[:content].title).to eq('test title')
    end

    it 'is expected to redirect to root' do
      is_expected.to redirect_to :root
    end

    it 'is expected to create new content' do
      expect { Content.create(attr) }.to change { Content.count }.by(1)
    end
  end

  # edit action
  describe 'GET #edit' do
    before do
      get :edit, params: { id: content.id }
    end

    it 'assigns the content' do
      expect(assigns(:content)).not_to be_nil
    end

    it 'is expected to set content instance variable' do
      expect(assigns(:content)).to eq(Content.find(content[:id]))
    end

    it 'is expected to render edit template' do
      is_expected.to render_template(:edit)
    end
  end

  # update action
  describe 'PUT #update' do
    before do
      put :update, params: { id: content.id, content: attr }
    end

    context 'when content not found' do
      it 'is expected to redirect to root' do
        is_expected.to redirect_to :root
      end
    end

    context 'when content exist in database' do
      context 'when data is provided is valid' do
        it 'is expected to update content' do
          expect(content.reload.title).to eq('new title')
        end

        it 'is_expected to redirect_to root' do
          is_expected.to redirect_to :root
        end
      end

      context 'when data is invalid' do
        it 'is updates the requested content' do
          expect(content.reload.title).not_to be_empty
        end

        it 'assigns the content' do
          expect(assigns(:content)).not_to be_nil
        end
      end
    end
  end

  # destroy action
  describe 'DELETE #destroy' do
    it 'delete a content' do
      expect do
        delete :destroy, params: { id: content.id }
      end.to change(Content, :count).by(-1)
    end

    it 'is_expected to redirect_to contents_path' do
      delete :destroy, params: { id: content.id }
      is_expected.to redirect_to contents_path
    end
  end
end
