# require "application_system_test_case"
#
# class UsersTest < ApplicationSystemTestCase
#
#   setup do
#     User.create(firstname: "bab", lastname: "bab", email: "truc@truc.truc", id: 1)
#   end
#
#   test "visiting index as visitor" do
#     visit root_path
#     assert_selector "a", text: "S'inscrire"
#     assert_selector "a", text: "Se connecter"
#     assert_no_selector "a", text: "Liste des membres"
#   end
#
#   test "visiting index as user" do
#     visit log_in_path
#     fill_in "id", with: "1"
#     click_button "Log in"
#     assert_no_selector "a", text: "S'inscrire"
#     assert_no_selector "a", text: "Se connecter"
#     assert_selector "a", text: "Liste des membres"
#   end
#
#   test "can't sign up without email" do
#     visit sign_up_path
#     fill_in "firstname", with: "First name"
#     fill_in "lastname", with: "Last name"
#     click_button "Créer un compte"
#     assert_text "Email can't be blank"
#   end
#
#   test "can't sign up with existing email" do
#     visit sign_up_path
#     fill_in "firstname", with: "First name"
#     fill_in "lastname", with: "Last name"
#     fill_in "email", with: "truc@truc.truc"
#     click_button "Créer un compte"
#     assert_text "Email has already been taken"
#   end
#
#   test "login with wrong ID" do
#     visit log_in_path
#     fill_in "id", with: "11"
#     click_button "Log in"
#     assert_text "ID inconnue"
#   end
#
#   test "success login with ID" do
#     visit log_in_path
#     fill_in "id", with: "1"
#     click_button "Log in"
#     assert_selector "a", text: "Liste des membres"
#   end
#
#   test "navbar links as visitor" do
#     visit root_path
#     assert_selector "li", text: "S'inscrire"
#     assert_selector "li", text: "Se connecter"
#     assert_no_selector "li", text: "Liste des membres"
#   end
#
#   test "navbar links as user" do
#     visit log_in_path
#     fill_in "id", with: "1"
#     click_button "Log in"
#     assert_no_selector "li", text: "S'inscrire"
#     assert_no_selector "li", text: "Se connecter"
#     assert_selector "li", text: "Liste des membres"
#   end
#
#   test "visitor can't see club index" do
#     visit users_path
#     assert_text "Vous n'êtes pas connecté."
#   end
#
#   test "club index lists all users" do
#     visit log_in_path
#     fill_in "id", with: "1"
#     click_button "Log in"
#     visit users_path
#     assert_text "Bab Bab"
#   end
#
# end
