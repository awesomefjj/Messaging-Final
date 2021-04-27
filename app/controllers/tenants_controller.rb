class TenantsController < ApplicationController
    before_action :set_tenant, only: %i[ edit update show ]
    
def index
    @tenants = Tenant.all
end

def new
    @tenant = Tenant.new  
end


def create
    @tenant = Tenant.new(tenant_params)

    respond_to do |format|
      if @tenant.save
        format.html { redirect_to tenants_url, notice: "Tenant was successfully created." }
        format.json { render :show, status: :created, location: @tenant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
end

def destroy
    @tenant = Tenant.find(params[:id])
    @tenant.destroy
    respond_to do |format|
      format.html { redirect_to tenants_url, notice: "Notification was successfully destroyed." }
      format.json { head :no_content }
    end
end
private
  # Use callbacks to share common setup or constraints between actions.
  def set_tenant
    @tenant = Tenant.where("tenant_id = ?", params[:tenant_id])
  end

  #def del_tenant
    #@tanant = Tenant.find(params[:id])
  #end
  # Only allow a list of trusted parameters through.
  def tenant_params
    params.require(:tenant).permit(:tenant_id, :tenant_name, :phone_num)
  end

end