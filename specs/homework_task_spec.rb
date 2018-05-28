# Part A
#
# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

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
