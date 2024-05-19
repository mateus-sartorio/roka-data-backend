require "application_system_test_case"

class ResidentsTest < ApplicationSystemTestCase
  setup do
    @resident = residents(:one)
  end

  test "visiting the index" do
    visit residents_url
    assert_selector "h1", text: "Residents"
  end

  test "should create resident" do
    visit residents_url
    click_on "New resident"

    fill_in "Address", with: @resident.address
    fill_in "Birthdate", with: @resident.birthdate
    check "Has plaque" if @resident.has_plaque
    check "Is on whatsapp group" if @resident.is_on_whatsapp_group
    check "Lives in jn" if @resident.lives_in_jn
    fill_in "Name", with: @resident.name
    check "Needs collect on the house" if @resident.needs_collect_on_the_house
    fill_in "Observations", with: @resident.observations
    fill_in "Phone", with: @resident.phone
    fill_in "Profession", with: @resident.profession
    fill_in "Reference point", with: @resident.reference_point
    fill_in "Registration year", with: @resident.registration_year
    fill_in "Residents in the house", with: @resident.residents_in_the_house
    fill_in "Roka", with: @resident.roka_id
    fill_in "Situation", with: @resident.situation
    click_on "Create Resident"

    assert_text "Resident was successfully created"
    click_on "Back"
  end

  test "should update Resident" do
    visit resident_url(@resident)
    click_on "Edit this resident", match: :first

    fill_in "Address", with: @resident.address
    fill_in "Birthdate", with: @resident.birthdate
    check "Has plaque" if @resident.has_plaque
    check "Is on whatsapp group" if @resident.is_on_whatsapp_group
    check "Lives in jn" if @resident.lives_in_jn
    fill_in "Name", with: @resident.name
    check "Needs collect on the house" if @resident.needs_collect_on_the_house
    fill_in "Observations", with: @resident.observations
    fill_in "Phone", with: @resident.phone
    fill_in "Profession", with: @resident.profession
    fill_in "Reference point", with: @resident.reference_point
    fill_in "Registration year", with: @resident.registration_year
    fill_in "Residents in the house", with: @resident.residents_in_the_house
    fill_in "Roka", with: @resident.roka_id
    fill_in "Situation", with: @resident.situation
    click_on "Update Resident"

    assert_text "Resident was successfully updated"
    click_on "Back"
  end

  test "should destroy Resident" do
    visit resident_url(@resident)
    click_on "Destroy this resident", match: :first

    assert_text "Resident was successfully destroyed"
  end
end
