require 'spec_helper'
require_relative '../../app/app.rb'

RSpec.feature "posting peeps" do
  scenario "create peeps" do
    visit '/home'
    click_button("Post a peep")
    fill_in('user', with: 'eli')
    fill_in('content', with: 'is building a twitter clone')
    click_button("post")
    expect(page.status_code).to eq 200

    within 'ol#peeps' do
      expect(page).to have_content('twitter clone')
    end
  end
end
