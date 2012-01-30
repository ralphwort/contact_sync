class FnblPimContactsController < ApplicationController
  # GET /fnbl_pim_contacts
  # GET /fnbl_pim_contacts.json
  def index
    @fnbl_pim_contacts = FnblPimContact.where("userid = '" + params[:username] + "'")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fnbl_pim_contacts }
    end
  end

  # GET /fnbl_pim_contacts/1
  # GET /fnbl_pim_contacts/1.json
  def show
    @fnbl_pim_contact = FnblPimContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fnbl_pim_contact }
    end
  end

  # GET /fnbl_pim_contacts/new
  # GET /fnbl_pim_contacts/new.json
  def new
    @fnbl_pim_contact = FnblPimContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fnbl_pim_contact }
    end
  end

  # GET /fnbl_pim_contacts/1/edit
  def edit
    @fnbl_pim_contact = FnblPimContact.find(params[:id])
  end

  # POST /fnbl_pim_contacts
  # POST /fnbl_pim_contacts.json
  def create
    @fnbl_pim_contact = FnblPimContact.new(params[:fnbl_pim_contact])

    respond_to do |format|
      if @fnbl_pim_contact.save
        format.html { redirect_to @fnbl_pim_contact, notice: 'Fnbl pim contact was successfully created.' }
        format.json { render json: @fnbl_pim_contact, status: :created, location: @fnbl_pim_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @fnbl_pim_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fnbl_pim_contacts/1
  # PUT /fnbl_pim_contacts/1.json
  def update
    @fnbl_pim_contact = FnblPimContact.find(params[:id])

    respond_to do |format|
      if @fnbl_pim_contact.update_attributes(params[:fnbl_pim_contact])
        format.html { redirect_to @fnbl_pim_contact, notice: 'Fnbl pim contact was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fnbl_pim_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnbl_pim_contacts/1
  # DELETE /fnbl_pim_contacts/1.json
  def destroy
    @fnbl_pim_contact = FnblPimContact.find(params[:id])
    @fnbl_pim_contact.destroy

    respond_to do |format|
      format.html { redirect_to fnbl_pim_contacts_url }
      format.json { head :ok }
    end
  end
end
