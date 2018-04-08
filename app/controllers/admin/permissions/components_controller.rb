class Admin::Permissions::ComponentsController < ApplicationController
  before_action :set_admin_component, only: [:show, :update, :destroy]

  # GET /admin/components
  def index
    @admin_components = Component.all

    render json: @admin_components
  end

  # GET /admin/components/1
  def show
    render json: @admin_component
  end

  # POST /admin/components
  def create
    @admin_component = Component.new(admin_component_params)

    if @admin_component.save
      render json: @admin_component, status: :created, location: @admin_component
    else
      render json: @admin_component.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /admin/components/1
  def update
    if @admin_component.update(admin_component_params)
      render json: @admin_component
    else
      render json: @admin_component.errors, status: :unprocessable_entity
    end
  end

  # DELETE /admin/components/1
  def destroy
    @admin_component.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_component
      @admin_component = Component.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_component_params
      params.fetch(:admin_component, {})
    end
end
