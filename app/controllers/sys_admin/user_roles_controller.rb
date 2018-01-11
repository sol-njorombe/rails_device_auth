class SysAdmin::UserRolesController < ApplicationController
  before_action :set_user_role, only: [:show, :update, :destroy]

  # GET /user_roles
  def index
    @user_roles = UserRole.all

    render json: @user_roles, include: [:user, :role]
  end

  # GET /user_roles/1
  def show
    render json: @user_role, include: [:user, :role]
  end

  # POST /user_roles
  def create
    @user_role = UserRole.new(user_role_params)

    if @user_role.save
      render json: @user_role, include: [:user, :role], status: :created
    else
      render json: @user_role.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_roles/1
  def update
    if @user_role.update(user_role_params)
      render json: @user_role, include: [:user, :role]
    else
      render json: @user_role.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_roles/1
  def destroy
    @user_role.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_role
      @user_role = UserRole.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_role_params
      params.require(:user_role).permit(:user_id, :role_id)
    end
end
