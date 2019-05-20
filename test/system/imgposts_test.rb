require "application_system_test_case"

class ImgpostsTest < ApplicationSystemTestCase
  setup do
    @imgpost = imgposts(:one)
  end

  test "visiting the index" do
    visit imgposts_url
    assert_selector "h1", text: "Imgposts"
  end

  test "creating a Imgpost" do
    visit imgposts_url
    click_on "New Imgpost"

    fill_in "Content", with: @imgpost.content
    fill_in "Title", with: @imgpost.title
    click_on "Create Imgpost"

    assert_text "Imgpost was successfully created"
    click_on "Back"
  end

  test "updating a Imgpost" do
    visit imgposts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @imgpost.content
    fill_in "Title", with: @imgpost.title
    click_on "Update Imgpost"

    assert_text "Imgpost was successfully updated"
    click_on "Back"
  end

  test "destroying a Imgpost" do
    visit imgposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Imgpost was successfully destroyed"
  end
end
