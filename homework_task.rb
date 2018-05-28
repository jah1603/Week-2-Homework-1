class CodeclanStudent

attr_reader(:name, :cohort)
attr_writer(:name, :cohort)

def initialize(name, cohort)
    @name = name
    @cohort = cohort
end

def name()
  return @name
end

def cohort()
  return @cohort
end

def set_student_name(new_name)
  @name = new_name
end

def set_student_cohort(new_cohort)
  @cohort = new_cohort
end

end

def student_talks
  return "I can talk!"
end

def say_favourite_language(language)
  return "I love #{language}!"
end
