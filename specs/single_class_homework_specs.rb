require('minitest/autorun')
require('minitest/rg')
require_relative('../single_class_homework_file.rb')

class TestStudent < MiniTest::Test
  def test_get_name
    student = Student.new('Simon', 17)
    assert_equal('Simon', student.get_name)
  end

  def test_get_cohort
    student = Student.new('Simon', 17)
    assert_equal(17, student.get_cohort)
  end

  def test_set_name
    student = Student.new('Simon', 17)
    student.set_name('Fraser')
    assert_equal('Fraser', student.get_name)
  end

  def test_set_cohort
    student = Student.new('Simon', 17)
    student.set_cohort(18)
    assert_equal(18, student.get_cohort)
  end

  def test_student_talk
      student = Student.new('Simon', 17)
      student.student_talk
      assert_equal('ruby is fun', student.student_talk)
  end

  def test_student_language
    student = Student.new('Simon', 17)
    student.student_language
    assert_equal("Ruby is fun", student.student_language)
  end


end
