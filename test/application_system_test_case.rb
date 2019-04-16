require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]

  def setup
    @user1 = users(:one)
    @user2 = users(:two)
  end

  test 'user index' do
    visit users_path

    assert page.has_content?(@user1.name)
    assert page.has_content?(@user2.name)
  end

  test 'add a new user' do
    visit users_path
    click_link('New User')
    fill_in('Name', :with => 'Foo')
    click_button('Create User')

    assert page.has_content?("Foo")
  end

  test 'update a user' do
    visit users_path
    find_link('Edit', href: "/users/#{@user1.id}/edit").click
    fill_in('Name', :with => "Bar")
    click_button('Update User')

    assert page.has_content?(@user1.id)
    assert page.has_content?("Bar")
  end

  test 'user show' do
    visit users_path
    find_link('Show', href: "/users/#{@user1.id}").click

    assert page.has_content?(@user1.id)
    assert page.has_content?(@user1.name)
  end
end
