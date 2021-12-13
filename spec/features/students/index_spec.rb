require 'rails_helper'

describe "students index page" do
  before do
    @student1 = Student.create!(name: "Paul Leonard", age: 28, house: "Slytherin")
    @student2 = Student.create!(name: "Harry Potter", age: 27, house: "Slytherin")
    @student3 = Student.create!(name: "Ron Weasley", age: 30, house: "Slytherin")
    visit "/students"
  end

  it "I see a list of students with their information" do
    expect(page).to have_content(@student1.name)
    expect(page).to have_content(@student1.age)
    expect(page).to have_content(@student1.house)
    expect(page).to have_content(@student2.name)
    expect(page).to have_content(@student2.age)
    expect(page).to have_content(@student2.house)
    expect(page).to have_content(@student3.name)
    expect(page).to have_content(@student3.age)
    expect(page).to have_content(@student3.house)
  end
end
