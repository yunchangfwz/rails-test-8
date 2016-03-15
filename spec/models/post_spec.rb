require 'rails_helper'

describe Post, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
    it { is_expected.to validate_presence_of :user_id }
  end

  context 'association' do
    it { is_expected.to belong_to :user }
  end
end
