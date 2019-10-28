School.destroy_all
User.destroy_all
Assignment.destroy_all
Grade.destroy_all
Course.destroy_all
Announcement.destroy_all
Document.destroy_all

puts "schools ..."
school_1 = School.create({
    name: 'Seven Lakes'
})

school_2 = School.create({
    name: 'Taylor High School'
})
school_3 = School.create({
    name: 'Cinco Ranch High School'
})
puts "users ..."
user_barrette1 = User.create({
    name: "Barrette Banner",
    email: 'bar3tt3@gmail.com',
    password: 'password1',
    school_id: school_1.id,
    gender: 'male',
    isTeacher: true
})
user_michael1 = User.create({
    name: "Michael Evans",
    email: 'm1k3@gmail.com',
    password: 'password',
    school_id: school_1.id,
    gender: "male",
    isTeacher: false
})
puts "courses ..."
biology_101_course = Course.create({
    name: "Biology 101",
    subject: "Biology",
    start_date: "2019-08-15",
    end_date: "2019-12-18",
    start_time: nil,
    end_time: nil,
    icon: nil,
    user_id: user_barrette1.id,
    student_ids: [user_michael1.id],
    pending_student_ids: []
})

calculus_101_course = Course.create({
    name: "Calculus 2301",
    subject: "Math",
    start_date: "2019-08-15",
    end_date: "2019-12-18",
    start_time: nil,
    end_time: nil,
    icon: nil,
    user_id: user_barrette1.id,
    student_ids: [user_michael1.id],
    pending_student_ids: []
})
history_101_course = Course.create({
    name: "American History 1800s",
    subject: "History",
    start_date: "2019-08-15",
    end_date: "2019-12-18",
    start_time: nil,
    end_time: nil,
    icon: nil,
    user_id: user_barrette1.id,
    student_ids: [user_michael1.id],
    pending_student_ids: []
})
puts "assignments ..."
assignment_1 = Assignment.create({
    name: "HW 1",
    category: 'homework',
    isComplete: false,
    course_id: biology_101_course.id,
    due_date: '2019-10-23'
})
assignment_2 = Assignment.create({
    name: "HW 2",
    category: 'homework',
    isComplete: false,
    course_id: biology_101_course.id,
    due_date: '2019-10-23'
})
assignment_3 = Assignment.create({
    name: "QUIZ 1",
    category: 'quiz',
    isComplete: false,
    course_id: biology_101_course.id,
    due_date: '2019-10-23'
})
assignment_4 = Assignment.create({
    name: "QUIZ 2",
    category: 'quiz',
    isComplete: false,
    course_id: biology_101_course.id,
    due_date: '2019-10-23'
})
assignment_5 = Assignment.create({
    name: "TEST 1",
    category: 'test',
    isComplete: false,
    course_id: biology_101_course.id,
    due_date: '2019-10-24'
})
assignment_6 = Assignment.create({
    name: "TEST 2",
    category: 'test',
    isComplete: false,
    course_id: biology_101_course.id,
    due_date: '2019-10-24'
})
assignment_7 = Assignment.create({
    name: "FINAL TEST",
    category: 'final',
    isComplete: false,
    course_id: biology_101_course.id,
    due_date: '2019-10-24'
})

assignment_1_calc = Assignment.create({
    name: "HW 1",
    category: 'homework',
    isComplete: false,
    course_id: calculus_101_course.id,
    due_date: '2019-10-25'
})
assignment_2_calc = Assignment.create({
    name: "HW 2",
    category: 'homework',
    isComplete: false,
    course_id: calculus_101_course.id,
    due_date: '2019-11-20'
})
assignment_3_calc = Assignment.create({
    name: "QUIZ 1",
    category: 'quiz',
    isComplete: false,
    course_id: calculus_101_course.id,
    due_date: '2019-11-20'
})
assignment_4_calc = Assignment.create({
    name: "Test",
    category: 'test',
    isComplete: false,
    course_id: calculus_101_course.id,
    due_date: '2019-10-28'
})
puts "grades ..."
grade1 = Grade.create({
    user_id: user_michael1.id,
    assignment_id: assignment_1.id,
    value: 100
})

grade2 = Grade.create({
    user_id: user_michael1.id,
    assignment_id: assignment_2.id,
    value: 50
    # assignment: assignment_2.name,
    # category: assignment_2.category,
    # course_id: assignment_2.course_id,
})

grade3 = Grade.create({
    user_id: user_michael1.id,
    assignment_id: assignment_3.id,
    value: 75
    # assignment: assignment_3.name,
    # category: assignment_3.category,
    # course_id: assignment_3.course_id,
})
grade4 = Grade.create({
    user_id: user_michael1.id,
    assignment_id: assignment_4.id,
    value: 70
    # assignment: assignment_4.name,
    # category: assignment_4.category,
    # course_id: assignment_4.course_id,
})
grade5 = Grade.create({
    user_id: user_michael1.id,
    assignment_id: assignment_5.id,
    value: 10
    # assignment: assignment_5.name,
    # category: assignment_5.category,
    # course_id: assignment_5.course_id,
})
grade6 = Grade.create({
    user_id: user_michael1.id,
    assignment_id: assignment_6.id,
    value: 100
    # assignment: assignment_.name,
    # category: assignment_2.category,
    # course_id: assignment_2.course_id,
})
grade7 = Grade.create({
    user_id: user_michael1.id,
    assignment_id: assignment_7.id,
    value: 1
    # assignment: assignment_2.name,
    # category: assignment_2.category,
    # course_id: assignment_2.course_id,
})






