class MessagesController < ApplicationController
def index
    @notifications = Notification.where("tenant_id =?", params[:tenant_id] )
end
end
