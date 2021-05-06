class DashboardsController < ApplicationController
def show
    @notifications = Notification.last(5)
    @notifications_all = Notification.all
    
    @noti_num_year = Notification.where(create_t: Time.now.all_year).count
    @noti_num_mon = Notification.where(create_t: Time.now.all_month).count
    @noti_num_day = Notification.where(create_t: Time.now.all_day).count
    @year = Array.new
    (0..11).each do |i|
        begin_date = i
        end_date = i+1
        
        @year.push(Notification.where('create_t >= ? AND create_t <= ?',
            Time.now.beginning_of_year.advance(months: begin_date), Time.now.beginning_of_year.advance(months: end_date)).count)
    end
   
    digist = Array[430,360,450,523,500,489,398,425,414,399,450,422]
    gon.noti_num = @noti_num_mon
    gon.digists = @year
end
end