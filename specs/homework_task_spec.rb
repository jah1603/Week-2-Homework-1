require("minitest/autorun")
require_relative("../homework_task")

class CodeclanStudentTest < MiniTest::Test

  def test_student_name
      codeclan_student = CodeclanStudent.new("James", "E22")
      assert_equal("James", codeclan_student.name)
  end

  def test_student_name
      codeclan_student = CodeclanStudent.new("James", "E22")
      codeclan_student.set_student_name("Montgomery")
      assert_equal("Montgomery", codeclan_student.name)
  end

  def test_student_cohort
      codeclan_student = CodeclanStudent.new("James", "E22")
      assert_equal("E22", codeclan_student.cohort)
  end

  def test_student_cohort
      codeclan_student = CodeclanStudent.new("James", "E22")
      codeclan_student.set_student_cohort("G43")
      assert_equal("G43", codeclan_student.cohort)
  end

def test_student_talks
  codeclan_student = CodeclanStudent.new("James", "E22")
  assert_equal("I can talk!", student_talks)
end

def test_say_favourite_language
  codeclan_student = CodeclanStudent.new("James", "E22")
  language_result = say_favourite_language("Python")
  assert_equal("I love Python!", language_result)
end

end
