require "test_helper"

class CollectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collect = collects(:one)
  end

  test "should get index" do
    get collects_url
    assert_response :success
  end

  test "should get new" do
    get new_collect_url
    assert_response :success
  end

  test "should create collect" do
    assert_difference("Collect.count") do
      post collects_url, params: { collect: { ammount: @collect.ammount, collected_on: @collect.collected_on, resident_id: @collect.resident_id } }
    end

    assert_redirected_to collect_url(Collect.last)
  end

  test "should show collect" do
    get collect_url(@collect)
    assert_response :success
  end

  test "should get edit" do
    get edit_collect_url(@collect)
    assert_response :success
  end

  test "should update collect" do
    patch collect_url(@collect), params: { collect: { ammount: @collect.ammount, collected_on: @collect.collected_on, resident_id: @collect.resident_id } }
    assert_redirected_to collect_url(@collect)
  end

  test "should destroy collect" do
    assert_difference("Collect.count", -1) do
      delete collect_url(@collect)
    end

    assert_redirected_to collects_url
  end
end
