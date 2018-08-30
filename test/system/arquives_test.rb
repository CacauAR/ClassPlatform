require "application_system_test_case"

class ArquivesTest < ApplicationSystemTestCase
  setup do
    @arquife = arquives(:one)
  end

  test "visiting the index" do
    visit arquives_url
    assert_selector "h1", text: "Arquives"
  end

  test "creating a Arquive" do
    visit arquives_url
    click_on "New Arquive"

    fill_in "Classe", with: @arquife.classe_id
    fill_in "Course", with: @arquife.course_id
    fill_in "Path", with: @arquife.path
    click_on "Create Arquive"

    assert_text "Arquive was successfully created"
    click_on "Back"
  end

  test "updating a Arquive" do
    visit arquives_url
    click_on "Edit", match: :first

    fill_in "Classe", with: @arquife.classe_id
    fill_in "Course", with: @arquife.course_id
    fill_in "Path", with: @arquife.path
    click_on "Update Arquive"

    assert_text "Arquive was successfully updated"
    click_on "Back"
  end

  test "destroying a Arquive" do
    visit arquives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arquive was successfully destroyed"
  end
end
