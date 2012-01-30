class FnblUsersController < ApplicationController
  # GET /fnbl_users
  # GET /fnbl_users.json
  def index
    @fnbl_users = FnblUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fnbl_users }
    end
  end

  def rw1
    @fnbl_users = FnblUser.all
    
  end

  # GET /fnbl_users/1
  # GET /fnbl_users/1.json
  def show
    @fnbl_user = FnblUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fnbl_user }
    end
  end

  # GET /fnbl_users/new
  # GET /fnbl_users/new.json
  def new
    @fnbl_user = FnblUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fnbl_user }
    end
  end

  # GET /fnbl_users/1/edit
  def edit
    @fnbl_user = FnblUser.find(params[:id])
    @fnbl_user.password = `php #{Rails.root}/public/decrypt_password.php #{@fnbl_user.password}`
  end

  # POST /fnbl_users
  # POST /fnbl_users.json
  def create
    @fnbl_user = FnblUser.new
    fnbl_user_tmp1 = params[:fnbl_user]
    @fnbl_user.username = fnbl_user_tmp1[:username]
    @fnbl_user.password = `php #{Rails.root}/public/encrypt_password.php #{fnbl_user_tmp1[:password]}`
    @fnbl_user.email = fnbl_user_tmp1[:email]
    @fnbl_user.first_name = fnbl_user_tmp1[:first_name]
    @fnbl_user.last_name = fnbl_user_tmp1[:last_name]
    @fnbl_user_role = @fnbl_user.fnbl_user_roles.build(:role=>"sync_user")

    respond_to do |format|
      if @fnbl_user.save
        format.html { redirect_to @fnbl_user, notice: 'Fnbl user was successfully created.' }
        format.json { render json: @fnbl_user, status: :created, location: @fnbl_user }
      else
        format.html { render action: "new" }
        format.json { render json: @fnbl_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fnbl_users/1
  # PUT /fnbl_users/1.json
  def update
    @fnbl_user = FnblUser.find(params[:id])

    respond_to do |format|
      if @fnbl_user.update_attributes(params[:fnbl_user])
    	fnbl_user_tmp1 = FnblUser.find(params[:id])
        fnbl_user_tmp1.password = `php #{Rails.root}/public/encrypt_password.php #{fnbl_user_tmp1[:password]}`
        if fnbl_user_tmp1.save
          format.html { redirect_to @fnbl_user, notice: 'Fnbl user was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @fnbl_user.errors, status: :unprocessable_entity }
        end
      else
        format.html { render action: "edit" }
        format.json { render json: @fnbl_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnbl_users/1
  # DELETE /fnbl_users/1.json
  def destroy
    @fnbl_user = FnblUser.find(params[:id])
    @fnbl_user.destroy

    respond_to do |format|
      format.html { redirect_to fnbl_users_url }
      format.json { head :ok }
    end
  end
end
