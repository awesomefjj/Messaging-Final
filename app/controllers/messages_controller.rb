class MessagesController < ApplicationController
  
  def index
   
    @tenant_notifications = Notification.where("tenant_id =?", params[:tenant_id] ).page(params[:page]).per(15)
    @q = Notification.ransack(params[:q])
    @text = @q.result(distinct:true).page(params[:page]).per(15)
  end



end
