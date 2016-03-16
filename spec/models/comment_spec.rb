require 'rails_helper'

describe Comment, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of :user_id }
    it { is_expected.to validate_presence_of :message }
    it { is_expected.to validate_presence_of :commentable_id }
  end

  context 'association' do
    it { is_expected.to belong_to :commentable }
    it { is_expected.to belong_to :user }
  end
end
