require 'rails_helper'

describe Profile, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of :user_id }
  end

  context 'association' do
    it { is_expected.to belong_to :user }
    it { is_expected.to have_many :comments }
  end
end
