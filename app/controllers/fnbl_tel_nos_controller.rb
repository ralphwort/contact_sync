class FnblTelNosController < ApplicationController
  # GET /fnbl_tel_nos
  # GET /fnbl_tel_nos.json
  def index
    @fnbl_tel_nos = FnblTelNo.where("userid = '" + params[:username] + "'")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fnbl_tel_nos }
    end
  end

  # GET /fnbl_tel_nos/1
  # GET /fnbl_tel_nos/1.json
  def show
    @fnbl_tel_no = FnblTelNo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fnbl_tel_no }
    end
  end

  # GET /fnbl_tel_nos/new
  # GET /fnbl_tel_nos/new.json
  def new
    @fnbl_tel_no = FnblTelNo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fnbl_tel_no }
    end
  end

  # GET /fnbl_tel_nos/1/edit
  def edit
    @fnbl_tel_no = FnblTelNo.find(params[:id])
  end

  # POST /fnbl_tel_nos
  # POST /fnbl_tel_nos.json
  def create
    @fnbl_tel_no = FnblTelNo.new(params[:fnbl_tel_no])

    respond_to do |format|
      if @fnbl_tel_no.save
        format.html { redirect_to @fnbl_tel_no, notice: 'Fnbl tel no was successfully created.' }
        format.json { render json: @fnbl_tel_no, status: :created, location: @fnbl_tel_no }
      else
        format.html { render action: "new" }
        format.json { render json: @fnbl_tel_no.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fnbl_tel_nos/1
  # PUT /fnbl_tel_nos/1.json
  def update
    @fnbl_tel_no = FnblTelNo.find(params[:id])

    respond_to do |format|
      if @fnbl_tel_no.update_attributes(params[:fnbl_tel_no])
        format.html { redirect_to @fnbl_tel_no, notice: 'Fnbl tel no was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fnbl_tel_no.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnbl_tel_nos/1
  # DELETE /fnbl_tel_nos/1.json
  def destroy
    @fnbl_tel_no = FnblTelNo.find(params[:id])
    @fnbl_tel_no.destroy

    respond_to do |format|
      format.html { redirect_to fnbl_tel_nos_url }
      format.json { head :ok }
    end
  end
end
