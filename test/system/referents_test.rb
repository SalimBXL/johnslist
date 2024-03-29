require 'application_system_test_case'

class ReferentsTest < ApplicationSystemTestCase
  setup do
    @referent = referents(:one)
  end

  test 'visiting the index' do
    visit referents_url
    assert_selector 'h1', text: 'Referents'
  end

  test 'should create referent' do
    visit referents_url
    click_on 'New referent'

    fill_in 'Email', with: @referent.email
    fill_in 'Name', with: @referent.name
    click_on 'Create Referent'

    assert_text 'Referent was successfully created'
    click_on 'Back'
  end

  test 'should update Referent' do
    visit referent_url(@referent)
    click_on 'Edit this referent', match: :first

    fill_in 'Email', with: @referent.email
    fill_in 'Name', with: @referent.name
    click_on 'Update Referent'

    assert_text 'Referent was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Referent' do
    visit referent_url(@referent)
    click_on 'Destroy this referent', match: :first

    assert_text 'Referent was successfully destroyed'
  end
end
