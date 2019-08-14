require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should have_many(:photos) }
  it { should validate_presence_of :email }
end

describe User do
  it 'has an email' do
    FactoryBot.find_definitions
    user = FactoryBot.create(:user)
    user.email = "myemail@iloveemails.com"
    user.password = "secretpassword"
  end
end
# describe User do
#   it 'has an email' do
#     FactoryBot.find_definitions
#     user1 = FactoryBot.create(:user)
#     user1.email = "myemail@iloveemails.com"
#     user1.password = "secretpassword"
#     user1.save
#     binding.pry
#     user2 = FactoryBot.create(:user)
#     user2.email.should eq 'testuser@test.com'
#     user2.save
#   end
# end
