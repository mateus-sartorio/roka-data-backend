require "test_helper"

class ResidentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resident = residents(:one)
  end

  test "should get index" do
    get residents_url
    assert_response :success
  end

  test "should get new" do
    get new_resident_url
    assert_response :success
  end

  test "should create resident" do
    assert_difference("Resident.count") do
      post residents_url, params: { resident: { address: @resident.address, birthdate: @resident.birthdate, has_plaque: @resident.has_plaque, is_on_whatsapp_group: @resident.is_on_whatsapp_group, lives_in_jn: @resident.lives_in_jn, name: @resident.name, needs_collect_on_the_house: @resident.needs_collect_on_the_house, observations: @resident.observations, phone: @resident.phone, profession: @resident.profession, reference_point: @resident.reference_point, registration_date: @resident.registration_date, residents_in_the_house: @resident.residents_in_the_house, roka_id: @resident.roka_id, situation: @resident.situation } }
    end

    assert_redirected_to resident_url(Resident.last)
  end

  test "should show resident" do
    get resident_url(@resident)
    assert_response :success
  end

  test "should get edit" do
    get edit_resident_url(@resident)
    assert_response :success
  end

  test "should update resident" do
    patch resident_url(@resident), params: { resident: { address: @resident.address, birthdate: @resident.birthdate, has_plaque: @resident.has_plaque, is_on_whatsapp_group: @resident.is_on_whatsapp_group, lives_in_jn: @resident.lives_in_jn, name: @resident.name, needs_collect_on_the_house: @resident.needs_collect_on_the_house, observations: @resident.observations, phone: @resident.phone, profession: @resident.profession, reference_point: @resident.reference_point, registration_date: @resident.registration_date, residents_in_the_house: @resident.residents_in_the_house, roka_id: @resident.roka_id, situation: @resident.situation } }
    assert_redirected_to resident_url(@resident)
  end

  test "should destroy resident" do
    assert_difference("Resident.count", -1) do
      delete resident_url(@resident)
    end

    assert_redirected_to residents_url
  end
end
