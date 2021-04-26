class DashboardsController < ApplicationController
def show
    @notifications = Notification.last(5)
    @notifications_all = Notification.all
    @noti_num = Notification.count
    gon.noti_num = @noti_num
end
end