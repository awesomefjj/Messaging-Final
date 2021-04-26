class MessagesController < ApplicationController
def index
    @notifications = Notification.all
end
end
