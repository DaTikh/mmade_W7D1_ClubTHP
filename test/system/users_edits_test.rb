require "application_system_test_case"

class UsersEditsTest < ApplicationSystemTestCase

  include SessionsHelper

  setup do
    @u1 = User.create(firstname: "bab", lastname: "bab", email: "truc@truc.truc", id: 1)
    @u2 = User.create(firstname: "max", lastname: "max", email: "chose@chose.chose", id: 2)
  end

  test "can't update profile without email" do
    visit log_in_path
    fill_in "id", with: "1"
    click_button "Log in"
    visit edit_user_path(@u1)
    fill_in "firstname", with: "First name"
    fill_in "lastname", with: "Last name"
    fill_in "email", with: ""
    click_button "Enregistrer les modifications"
    assert_text "Email can't be blank"
  end

  test "can't update profile with existing email" do
    visit log_in_path
    fill_in "id", with: "1"
    click_button "Log in"
    visit edit_user_path(@u1)
    fill_in "firstname", with: "First name"
    fill_in "lastname", with: "Last name"
    fill_in "email", with: "chose@chose.chose"
    click_button "Enregistrer les modifications"
    assert_text "Email has already been taken"
  end

  test "visitor can't edit profile" do
    visit edit_user_path(@u1)
    assert_text "Vous n'êtes pas connecté."
  end

  test "user can only edit his own profile" do
    visit log_in_path
    fill_in "id", with: "1"
    click_button "Log in"
    visit edit_user_path(@u2)
    assert_text "Accès refusé."
  end

end
