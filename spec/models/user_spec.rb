require 'rails_helper'

describe User, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of :first_name }
    it { is_expected.to validate_presence_of :last_name }
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :email }
  end

  context 'association' do
    it { is_expected.to have_many :posts }
    it { is_expected.to have_one  :profile }
  end
end
