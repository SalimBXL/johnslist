require "test_helper"

class ReferentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @referent = referents(:one)
  end

  test "should get index" do
    get referents_url
    assert_response :success
  end

  test "should get new" do
    get new_referent_url
    assert_response :success
  end

  test "should create referent" do
    assert_difference("Referent.count") do
      post referents_url, params: { referent: { email: @referent.email, name: @referent.name } }
    end

    assert_redirected_to referent_url(Referent.last)
  end

  test "should show referent" do
    get referent_url(@referent)
    assert_response :success
  end

  test "should get edit" do
    get edit_referent_url(@referent)
    assert_response :success
  end

  test "should update referent" do
    patch referent_url(@referent), params: { referent: { email: @referent.email, name: @referent.name } }
    assert_redirected_to referent_url(@referent)
  end

  test "should destroy referent" do
    assert_difference("Referent.count", -1) do
      delete referent_url(@referent)
    end

    assert_redirected_to referents_url
  end
end
