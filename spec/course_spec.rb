require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'exists' do
    course = Course.new('Calculus', 2)

    expect(course).to be_an_instance_of(Course)
  end

  it 'has a name' do
    course = Course.new('Calculus', 2)

    expect(course.name).to eq('Calculus')
  end

  it 'has a capactiy' do
    course = Course.new('Calculus', 2)

    expect(course.capacity).to eq(2)
  end

  it 'starts with no students' do
    course = Course.new('Calculus', 2)

    expect(course.students).to eq([])
  end

  it 'can enroll students' do
    course = Course.new('Calculus', 2)
    student_1 = Student.new({name: 'Morgan', age: 21})
    student_2 = Student.new({name: 'Jordan', age: 29})

    course.enroll(student_1)
    course.enroll(student_2)

    expect(course.students).to eq([student_1, student_2])
  end

  it 'starts off not full' do
    course = Course.new('Calculus', 2)

    expect(course.full?).to eq(false)
  end

  it 'can tell when full' do
    course = Course.new('Calculus', 2)
    student_1 = Student.new({name: 'Morgan', age: 21})
    student_2 = Student.new({name: 'Jordan', age: 29})

    course.enroll(student_1)
    course.enroll(student_2)

    expect(course.full?).to eq(true)
  end
end
