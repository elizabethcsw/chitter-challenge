require 'spec_helper'
require_relative '../../app/app.rb'

RSpec.feature "view created time" do
  scenario "display the time at which the peep is created at" do
    visit '/home'
    click_button("Post a peep")
    fill_in('user', with: 'eli')
    fill_in('content', with: 'is building a twitter clone')
    click_button("post")
    expect(page).to have_text("2017-08")
  end
end
