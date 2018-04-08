class  Admin::Permissions::AdminPermissionsController < ApplicationController
  before_action :set_admin_admin_permission, only: [:show, :update, :destroy]

  # GET /admin/admin_permissions
  def index
    @admin_admin_permissions = AdminPermission.all

    render json: @admin_admin_permissions
  end

  # GET /admin/admin_permissions/1
  def show
    render json: @admin_admin_permission
  end

  # POST /admin/admin_permissions
  def create
    @admin_admin_permission = AdminPermission.new(admin_admin_permission_params)

    if @admin_admin_permission.save
      render json: @admin_admin_permission, status: :created, location: @admin_admin_permission
    else
      render json: @admin_admin_permission.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admin/admin_permissions/1
  def update
    if @admin_admin_permission.update(admin_admin_permission_params)
      render json: @admin_admin_permission
    else
      render json: @admin_admin_permission.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admin/admin_permissions/1
  def destroy
    @admin_admin_permission.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_admin_permission
      @admin_admin_permission = AdminPermission.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_admin_permission_params
      params.fetch(:admin_admin_permission, {})
    end
end
