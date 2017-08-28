require 'spec_helper'
require_relative '../../app/app.rb'

RSpec.feature "posting peeps" do
  scenario "display peeps in reverse chronological order" do
    visit '/home'
    click_button("Post a peep")
    fill_in('user', with: 'eli')
    fill_in('content', with: 'is building a twitter clone')
    click_button("post")
    expect(page).to have_text("Home\nUser: eli Peep: is building a twitter clone")
  end
end
