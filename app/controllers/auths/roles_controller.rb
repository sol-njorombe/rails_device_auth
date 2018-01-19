class Auths::RolesController < ApplicationController
  before_action :set_role, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # GET /auth/roles
  def index
    @roles = current_user.roles

    render json: @roles
  end

  # GET /auth/roles/1
  def show
    render json: @role
  end

  # POST /auth/roles
  def create
    @role = Role.new(role_params)

    if @role.save
      render json: @role, status: :created, location: @role
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /auth/roles/1
  def update
    if @role.update(role_params)
      render json: @role
    else
      render json: @role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /auth/roles/1
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
      params.fetch(:role, {})
    end
end
