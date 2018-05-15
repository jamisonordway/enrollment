require 'rails_helper'

describe 'User' do
  describe 'user navigates to new student page' do
    it 'should show a form for a new student' do
      visit new_student_path
      expect(page).to have_content('Add a new student')
    end
  end
end
