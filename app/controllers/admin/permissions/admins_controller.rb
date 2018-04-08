class Admin::Permissions::AdminsController < ApplicationController
  before_action :set_admin_admin, only: [:show, :update, :destroy]

  # GET /admin/admins
  def index
    @admin_admins = Admin.all

    render json: @admin_admins
  end

  # GET /admin/admins/1
  def show
    render json: @admin_admin
  end

  # POST /admin/admins
  def create
    @admin_admin = Admin.new(admin_admin_params)

    if @admin_admin.save
      render json: @admin_admin, status: :created, location: @admin_admin
    else
      render json: @admin_admin.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admin/admins/1
  def update
    if @admin_admin.update(admin_admin_params)
      render json: @admin_admin
    else
      render json: @admin_admin.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admin/admins/1
  def destroy
    @admin_admin.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_admin
      @admin_admin = Admin.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_admin_params
      params.fetch(:admin_admin, {})
    end
end
