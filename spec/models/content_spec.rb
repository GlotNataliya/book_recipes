# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Content, type: :model do
  before(:all) do
    @content = Content.create(title: 'Bread')

    it 'checks that a content can be created' do
      expect(@content).to be_valid
    end

    it 'checks that a content can be read' do
      expect(Content.find_by_title('Bread')).to eq(@content)
    end

    it 'checks that a content can be updated' do
      @content.update(title: 'Bread')
      expect(Content.find_by_title('Bread')).to eq(@content)
    end

    it 'checks that a content can be destroyed' do
      @content.destroy
      expect(Content.find_by(title: 'Bread')).to be_nil
    end

    describe 'validations' do
      describe 'it validates name' do
        it { is_expected.to validate_presence_of(:title) }
      end
    end
  end
end
