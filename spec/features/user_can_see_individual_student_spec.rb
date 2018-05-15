require 'rails_helper'

describe 'User' do
  describe 'user navigates to student show page' do
    it 'should show the name of specified student' do
      student = Student.create(name: 'Jamison')

      visit student_path(student)

      expect(page).to have_content(Student.last.name)
    end
  end
  describe 'user starts on index and clicks on student name' do
    it 'should redirect to the relevant student show page' do
      student_1 = Student.create(name: 'Tristan')
      student_2 = Student.create(name: 'Richard')

      visit students_path
      click_on('Tristan')
      expect(current_path).to eq("/students/#{student_1.id}")
    end
  end
end
