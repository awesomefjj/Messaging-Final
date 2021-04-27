# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do |i|
    Notification.create(tenant_id: "5", tenant_name: "wxm", phone_num: "18265928047", title: "Test #{rand(9999)}",
     content: "Ohhhhhhhh! David Heinemeier Hasson and this is test #{rand(9999)}", receive_id: "2", create_t: Time.new(2020, 4, 22, 14, 35, 0 ))
end

50.times do |t|
    Notification.create(tenant_id: "2", tenant_name: "ys", phone_num: "18322285192", title: "Test #{rand(9999)}",
     content: "Ohhhhhhhh! David Heinemeier Hasson and this is test #{rand(9999)}", receive_id: "1", create_t: Time.new(2021, 9, 22, 14, 35, 0 ))
end

50.times do |e|
    Notification.create(tenant_id: "4", tenant_name: "stt", phone_num: "18385550258", title: "Test #{rand(9999)}",
     content: "Ohhhhhhhh! David Heinemeier Hasson and this is test #{rand(9999)}", receive_id: "1", create_t: Time.new(2021, 11, 14, 14, 35, 0 ))
end