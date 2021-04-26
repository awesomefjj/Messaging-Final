json.extract! notification, :id, :tenant_id, :tenant_name, :phone_num, :title, :content, :receive_id, :created_at, :updated_at
json.url notification_url(notification, format: :json)
