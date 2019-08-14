require 'rails_helper'

FactoryBot.define do
  factory(:user) do
    email {'testuser@test.com'}
    password {'testpassword'}
  end
end
