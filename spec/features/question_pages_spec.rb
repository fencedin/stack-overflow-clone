require 'spec_helper'

describe 'question pages' do

  context 'add question' do
    it 'adds a new question to page' do
      visit questions_path
      fill_in 'Title', with: 'test question'
      fill_in 'Details', with: 'test details'
      click_button 'Create Question'
      page.should have_content "test question"
    end
  end
end
