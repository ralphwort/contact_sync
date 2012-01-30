class FnblUserRolesController < ApplicationController
  # GET /fnbl_user_roles
  # GET /fnbl_user_roles.json
  def index
    @fnbl_user_roles = FnblUserRole.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fnbl_user_roles }
    end
  end

  # GET /fnbl_user_roles/1
  # GET /fnbl_user_roles/1.json
  def show
    @fnbl_user_role = FnblUserRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fnbl_user_role }
    end
  end

  # GET /fnbl_user_roles/new
  # GET /fnbl_user_roles/new.json
  def new
    @fnbl_user_role = FnblUserRole.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fnbl_user_role }
    end
  end

  # GET /fnbl_user_roles/1/edit
  def edit
    @fnbl_user_role = FnblUserRole.find(params[:id])
  end

  # POST /fnbl_user_roles
  # POST /fnbl_user_roles.json
  def create
    @fnbl_user_role = FnblUserRole.new(params[:fnbl_user_role])

    @fnbl_user_role = FnblUserRole.new
    fnbl_user_role_tmp1 = params[:fnbl_user_role]
    @fnbl_user_role.username = fnbl_user_role_tmp1[:username]
    @fnbl_user_role.role = fnbl_user_role_tmp1[:role]

    respond_to do |format|
      if @fnbl_user_role.save
        format.html { redirect_to @fnbl_user_role, notice: 'Fnbl user role was successfully created.' }
        format.json { render json: @fnbl_user_role, status: :created, location: @fnbl_user_role }
      else
        format.html { render action: "new" }
        format.json { render json: @fnbl_user_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fnbl_user_roles/1
  # PUT /fnbl_user_roles/1.json
  def update
    @fnbl_user_role = FnblUserRole.find(params[:id])

    respond_to do |format|
      if @fnbl_user_role.update_attributes(params[:fnbl_user_role])
        format.html { redirect_to @fnbl_user_role, notice: 'Fnbl user role was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fnbl_user_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnbl_user_roles/1
  # DELETE /fnbl_user_roles/1.json
  def destroy
    @fnbl_user_role = FnblUserRole.find(params[:id])
    @fnbl_user_role.destroy

    respond_to do |format|
      format.html { redirect_to fnbl_user_roles_url }
      format.json { head :ok }
    end
  end
end
