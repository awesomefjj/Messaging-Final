class DashboardsController < ApplicationController
def show
    @notifications = Notification.last(5)
    @notifications_all = Notification.all
    
    @noti_num_year = Notification.where(create_t: Time.now.all_year).count
    @noti_num_mon = Notification.where(create_t: Time.now.all_month).count
    @noti_num_day = Notification.where(create_t: Time.now.all_day).count
    
    gon.noti_num = @noti_num_mon
end
end