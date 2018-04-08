class  Admin::Permissions::Permissions::RolesController < ApplicationController
  before_action :set_role, only: [:show, :update, :destroy]

  # GET /sys_admin/roles
  def index
    @roles = Role.all
    render json: @roles
  end

  # GET /sys_admin/roles/1
  def show
    render json: @role
  end

  # POST /sys_admin/roles
  def create
    @role = Role.new(role_params)

    if @role.save
      render json: @role, status: :created
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sys_admin/roles/1
  def update
    if @role.update(role_params)
      render json: @role
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sys_admin/roles/1
  def destroy
    @role.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = Role.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def role_params
      params.require(:role).permit(:name, :desc, :icon, :mac)
    end
end
