require 'rails_helper'

describe 'User' do
  describe 'user navigates to student show page' do
    it 'should show a link to index at top of page' do
      student = Student.create(name: 'Justine')

      visit student_path(student)
      expect(page).to have_link('Student Index')
    end
    it 'should show a link to create a new student at top of page' do
      student = Student.create(name: 'Blythe')

      visit student_path(student)
      expect(page).to have_link('Create a Student')
    end
  end
  describe 'user navigates to student index page' do
    it 'should show a link to index at top of page' do
      visit students_path

      expect(page).to have_link('Student Index')
    end
    it 'should show a link to create a new student at top of page' do

      visit students_path

      expect(page).to have_link('Create a Student')
    end
  end
  describe 'user navigates to edit student page' do
    it 'should show a link to index at top of page' do
      student = Student.create(name: 'Manoj')

      visit edit_student_path(student)
      expect(page).to have_link('Student Index')
    end
    it 'should show a link to create a new student' do
      student = Student.create(name: 'Chris')

      visit edit_student_path(student)
      expect(page).to have_link('Create a Student')
    end
  end
end
