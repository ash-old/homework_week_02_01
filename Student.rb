#attr_accessor :student_name :cohort

class Student

def initialize(student_name, cohort)
  @student_name = student_name
  @cohort = cohort
end

def student_name
  return @student_name
end

def cohort
 return @cohort
end

def set_student_name(new_name)
  @student_name = new_name
end

def set_cohort_name(new_cohort)
  @cohort = new_cohort
end

def talk
  return "I can talk"
end

def say_favourite_language(language)
  return "I love #{language}"
end

end
