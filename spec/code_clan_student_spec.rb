require('minitest/autorun')
require('minitest/reporters')
require_relative('../code_clan_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
# ------------------------------------------------------------------------------

class TestStudent < MiniTest::Test
    
    def test_name
        student = Student.new("Jack", "E40")
        assert_equal("Jack", student.name())

    end
    def test_cohort
        student = Student.new("Jack", "E40")
        assert_equal("E40", student.cohort())

    end
    def test_set_name

        student = Student.new("Jack", "E40")
        student.set_name("Bob")
        assert_equal("Bob", student.name())
    end
    def test_set_cohort
        student = Student.new("Jack", "E40")
        student.set_cohort("E30")
        assert_equal("E30", student.cohort())
    end
    def test_talk
        student = Student.new("Jack", "E40")
        assert_equal("I can talk!", student.talk())
    end
    def test_say_favourite_language
        student = Student.new("Jack", "E40")
        assert_equal("I love Ruby!",  student.say_favourite_language("Ruby"))
    end


end