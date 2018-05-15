require 'rails_helper'

describe 'User' do
  describe 'user navigates to student show page' do
    it 'should show the name of specified student' do
      student_1 = Student.create(name: 'Jamison')
      student_2 = Student.create(name: 'Tyler')

      visit students_path

      expect(page).to have_content(student_1.name)
      expect(page).to have_content(student_2.name)
    end
  end
end
