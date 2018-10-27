require 'rails_helper'

RSpec.describe User, type: :model do
 context 'ensures name presence' do
  user = User.new(name: 'Name', email: 'sample@example.com').save
  expect(user).to eq(false)  
  end
end
