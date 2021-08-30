require 'rails_helper'

RSpec.describe Friendship, type: :model do
    it 'should have an user and a friend' do
      expect(subject).to be_valid 
    end
end
