require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'

feature "Create Project" do

  scenario "user can create project" do

    visit "/"
    click_link "New Project"

    fill_in "Name", with: "Atom"
    fill_in "Description", with: "Advanced text editor from GitHub"
    click_button "Create Project"

    expect(page).to have_content("Project has been created.") 

  end

end
