require 'rails_helper'

describe 'User' do
  describe 'user navigates to student index page' do
    describe 'user clicks delete button next to a students name' do
      it 'should redirect to students index and that student name should not be on page' do
        student_1 = Student.create(name: 'Cole')
        student_2 = Student.create(name: 'Zach')
        student_3 = Student.create(name: 'Eliot')

        visit students_path
    
        click_on "Delete #{student_3.name}"
        expect(current_path).to eq('/students')
        expect(page).to_not have_content(student_3.name)
      end
    end
  end
end
