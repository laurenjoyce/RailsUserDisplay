require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  setup do
    @user1 = users(:one)
    @user2 = users(:two)
  end

  test 'valid user' do
    user = User.new(name: 'Foo')
    
    assert user.valid?
  end

  test 'user invalid without name' do
    user = User.new

    refute user.valid?, 'user is valid without a name'
    assert_not_nil user.errors[:name], 'no validation error for name present'
  end

  # test 'user invalid without unique name' do
  #   user = User.new(name: 'Lauren')

  #   refute user.valid?, 'user is valid without a unique name'
  #   assert_not_same user.errors[:name], 'no validation error for name present'
  # end
end
