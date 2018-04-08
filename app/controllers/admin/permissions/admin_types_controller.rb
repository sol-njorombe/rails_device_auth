class Admin::Permissions::AdminTypesController < ApplicationController
  before_action :set_admin_admin_type, only: [:show, :update, :destroy]

  # GET /admin/admin_types
  def index
    @admin_admin_types = AdminType.all

    render json: @admin_admin_types
  end

  # GET /admin/admin_types/1
  def show
    render json: @admin_admin_type
  end

  # POST /admin/admin_types
  def create
    @admin_admin_type = AdminType.new(admin_admin_type_params)

    if @admin_admin_type.save
      render json: @admin_admin_type, status: :created, location: @admin_admin_type
    else
      render json: @admin_admin_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admin/admin_types/1
  def update
    if @admin_admin_type.update(admin_admin_type_params)
      render json: @admin_admin_type
    else
      render json: @admin_admin_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admin/admin_types/1
  def destroy
    @admin_admin_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_admin_type
      @admin_admin_type = AdminType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_admin_type_params
      params.fetch(:admin_admin_type, {})
    end
end
