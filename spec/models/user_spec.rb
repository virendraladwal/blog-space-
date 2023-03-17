require 'rails_helper'

RSpec.describe User, type: :model do

#   describe 'validations' do
#     describe 'it validates name' do
#       it { is_expected.to validate_presence_of(:name) }
#     end
#   end
it 'checks that a user can be created' do
        expect(@user) == be_valid
    end

end