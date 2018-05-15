require 'rails_helper'

describe 'User' do
  describe 'user navigates to edit student page' do
    it 'should show an edit student form' do
      student = Student.create(name: 'Sabrina')


      visit edit_student_path(student)
      expect(page).to have_content('Edit student')
    end
  end
  describe 'user fills in student information and clicks submit' do
    it 'should redirect to student show page with updated information' do
      student = Student.create(name: 'Matt')

      visit edit_student_path(student)
      fill_in 'student[name]', with: 'Steve'
      click_on 'Update Student'
      expect(current_path).to eq("/students/#{student.id}")
    end
  end
end
