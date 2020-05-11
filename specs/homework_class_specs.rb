require('minitest/autorun')
require('minitest/reporters')
require_relative('../Student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class StudentTest < MiniTest::Test

  def setup
    @student = Student.new('Ash', 'G19')
  end

  def test_student_name
    assert_equal('Ash', @student.student_name)
  end

  def test_cohort_name
    assert_equal('G19', @student.cohort)
  end

def test_set_student_name
  @student.set_student_name("Niall")
  assert_equal("Niall", @student.student_name)
end

def test_set_cohort_name
  @student.set_cohort_name("G20")
  assert_equal("G20", @student.cohort)
end

def test_get_student_talk
  assert_equal('I can talk', @student.talk)
end

def test_favourite_language
  assert_equal("I love Ruby", @student.say_favourite_language("Ruby"))
end


end
