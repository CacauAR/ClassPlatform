require "application_system_test_case"

class ProfessorsTest < ApplicationSystemTestCase
  setup do
    @professor = professors(:one)
  end

  test "visiting the index" do
    visit professors_url
    assert_selector "h1", text: "Professors"
  end

  test "creating a Professor" do
    visit professors_url
    click_on "New Professor"

    fill_in "Email", with: @professor.email
    fill_in "Image", with: @professor.image
    fill_in "Name", with: @professor.name
    fill_in "Password", with: @professor.password
    fill_in "Registry", with: @professor.registry
    fill_in "Sex", with: @professor.sex
    click_on "Create Professor"

    assert_text "Professor was successfully created"
    click_on "Back"
  end

  test "updating a Professor" do
    visit professors_url
    click_on "Edit", match: :first

    fill_in "Email", with: @professor.email
    fill_in "Image", with: @professor.image
    fill_in "Name", with: @professor.name
    fill_in "Password", with: @professor.password
    fill_in "Registry", with: @professor.registry
    fill_in "Sex", with: @professor.sex
    click_on "Update Professor"

    assert_text "Professor was successfully updated"
    click_on "Back"
  end

  test "destroying a Professor" do
    visit professors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Professor was successfully destroyed"
  end
end
