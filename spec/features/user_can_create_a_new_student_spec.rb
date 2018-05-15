require 'rails_helper'

describe 'User' do
  describe 'user navigates to new student page' do
    it 'should show a form for a new student' do
      visit new_student_path
      expect(page).to have_content('Add a new student')
    end
  end
  describe 'user completes form and clicks submit' do
    it 'should redirect to student index which should contain new student' do
    visit new_student_path
  
    fill_in 'student[name]', with: 'Jamison'
    click_on 'Create Student'
    expect(current_path).to eq('/students')
    expect(page).to have_content('Jamison')
  end
  end
end
