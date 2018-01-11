require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :content }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :article }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :content }
  end

  describe 'Factory' do
    let(:article) { FactoryBot.create(:article)}
    it 'should be valid' do
      expect(FactoryBot.create(:comment, article: article)).to be_valid
    end
  end
end