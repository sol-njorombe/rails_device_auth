class Admin::Permissions::AdminTypePermissionsController < ApplicationController
  before_action :set_admin_admin_type_permission, only: [:show, :update, :destroy]

  # GET /admin/admin_type_permissions
  def index
    @admin_admin_type_permissions = AdminTypePermission.all

    render json: @admin_admin_type_permissions
  end

  # GET /admin/admin_type_permissions/1
  def show
    render json: @admin_admin_type_permission
  end

  # POST /admin/admin_type_permissions
  def create
    @admin_admin_type_permission = AdminTypePermission.new(admin_admin_type_permission_params)

    if @admin_admin_type_permission.save
      render json: @admin_admin_type_permission, status: :created, location: @admin_admin_type_permission
    else
      render json: @admin_admin_type_permission.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admin/admin_type_permissions/1
  def update
    if @admin_admin_type_permission.update(admin_admin_type_permission_params)
      render json: @admin_admin_type_permission
    else
      render json: @admin_admin_type_permission.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admin/admin_type_permissions/1
  def destroy
    @admin_admin_type_permission.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_admin_type_permission
      @admin_admin_type_permission = AdminTypePermission.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_admin_type_permission_params
      params.fetch(:admin_admin_type_permission, {})
    end
end
