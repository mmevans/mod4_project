School.destroy_all
User.destroy_all
Assignment.destroy_all
Grade.destroy_all
Course.destroy_all


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
    email: 'bar3tt3',
    password: 'password1',
    school_id: school_1.id,
    gender: 'male',
    isTeacher: true
})
user_michael1 = User.create({
    name: "Michael Evans",
    email: 'm1k3',
    password: 'password',
    school_id: school_1.id,
    gender: "male",
    isTeacher: false
})
puts "courses ..."
biology_101_course = Course.create({
    name: "BIO 101",
    subject: "Biology",
    start_date: "2019-08-15",
    end_date: "2019-11-18",
    user_id: user_barrette1.id
})
puts "assignments ..."
assignment_1 = Assignment.create({
    name: "HW 1",
    category: 'homework',
    isComplete?: false,
    course_id: biology_101_course.id
})
puts "grades ..."
grade1 = Grade.create({
    user_id: user_michael1.id,
    assignment_id: assignment_1.id,
    value: 100
})






