class TestMailer < ActionMailer::Base
  default from: "from@example.com"

  def notify_students
    @students = Student.all
  end
end
