class MessagesController < ApplicationController
def index
    @notifications = Notification.all
    @tenant_notifications = Notification.where("tenant_id =?", params[:tenant_id] ).page(params[:page]).per(15)
end
end
