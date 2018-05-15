require 'rails_helper'

describe 'User' do
  describe 'user navigates to student show page' do
    it 'should show the name of specified student' do
      student = Student.create(name: 'Jamison')

      visit student_path(student)

      expect(page).to have_content(Student.last.name)
    end
  end
end
