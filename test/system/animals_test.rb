require "application_system_test_case"

class AnimalsTest < ApplicationSystemTestCase
  setup do
    @animal = animals(:one)
  end

  test "visiting the index" do
    visit animals_url
    assert_selector "h1", text: "Animals"
  end

  test "creating a Animal" do
    visit animals_url
    click_on "New Animal"

    fill_in "Age", with: @animal.age
    fill_in "Breed", with: @animal.breed
    fill_in "Desexed", with: @animal.desexed
    fill_in "Facebook", with: @animal.facebook
    fill_in "Favourite Parks", with: @animal.favourite_parks
    fill_in "Instragram", with: @animal.instragram
    fill_in "Name", with: @animal.name
    fill_in "Tumblr", with: @animal.tumblr
    fill_in "Twitter", with: @animal.twitter
    click_on "Create Animal"

    assert_text "Animal was successfully created"
    click_on "Back"
  end

  test "updating a Animal" do
    visit animals_url
    click_on "Edit", match: :first

    fill_in "Age", with: @animal.age
    fill_in "Breed", with: @animal.breed
    fill_in "Desexed", with: @animal.desexed
    fill_in "Facebook", with: @animal.facebook
    fill_in "Favourite Parks", with: @animal.favourite_parks
    fill_in "Instragram", with: @animal.instragram
    fill_in "Name", with: @animal.name
    fill_in "Tumblr", with: @animal.tumblr
    fill_in "Twitter", with: @animal.twitter
    click_on "Update Animal"

    assert_text "Animal was successfully updated"
    click_on "Back"
  end

  test "destroying a Animal" do
    visit animals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Animal was successfully destroyed"
  end
end
