require "application_system_test_case"

class UsersShowsTest < ApplicationSystemTestCase

  setup do
    @u1 = User.create(firstname: "bab", lastname: "bab", email: "truc@truc.truc", id: 1)
    @u2 = User.create(firstname: "max", lastname: "max", email: "chose@chose.chose", id: 2)
  end

  test "user can see profile link in navbar" do
    visit log_in_path
    fill_in "id", with: "1"
    click_button "Log in"
    assert_selector "li", text: "Mon profil"
  end

  test "profile show user full name and email" do
    visit log_in_path
    fill_in "id", with: "1"
    click_button "Log in"
    visit profile_path(@u1)
    assert_selector "h1", text: "Profil de Bab Bab"
    assert_text "truc@truc.truc"
  end

  test "visitor can't access profile" do
    visit profile_path(@u1)
    assert_text "Vous n'êtes pas connecté."
  end

  test "user can only see his own profile" do
    visit log_in_path
    fill_in "id", with: "1"
    click_button "Log in"
    visit profile_path(@u2)
    assert_text "Accès refusé."
  end

end
