class Student
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name #getter
  end

  def get_cohort
    return @cohort
  end

  def set_name(name)
    @name = name #setter
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def student_talk
    return 'ruby is fun'
  end

  def student_language
    return "Ruby is fun"
  end
end
