# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = StudentCourse.create([{student_id: '1',course_id:'7'},
                                      {student_id: '3',course_id:'6'},
                              {student_id: '8',course_id:'2'},
                              {student_id: '2',course_id:'5'},
                              {student_id: '7',course_id:'6'},
                              {student_id: '4',course_id:'3'},
                              {student_id: '5',course_id:'5'},
                              {student_id: '1',course_id:'4'}])