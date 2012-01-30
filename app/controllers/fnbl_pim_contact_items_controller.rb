class FnblPimContactItemsController < ApplicationController
  # GET /fnbl_pim_contact_items
  # GET /fnbl_pim_contact_items.json
  def index
    @fnbl_pim_contact_items = FnblPimContactItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fnbl_pim_contact_items }
    end
  end

  # GET /fnbl_pim_contact_items/1
  # GET /fnbl_pim_contact_items/1.json
  def show
    @fnbl_pim_contact_item = FnblPimContactItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fnbl_pim_contact_item }
    end
  end

  # GET /fnbl_pim_contact_items/new
  # GET /fnbl_pim_contact_items/new.json
  def new
    @fnbl_pim_contact_item = FnblPimContactItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fnbl_pim_contact_item }
    end
  end

  # GET /fnbl_pim_contact_items/1/edit
  def edit
    @fnbl_pim_contact_item = FnblPimContactItem.find(params[:id])
  end

  # POST /fnbl_pim_contact_items
  # POST /fnbl_pim_contact_items.json
  def create
    @fnbl_pim_contact_item = FnblPimContactItem.new(params[:fnbl_pim_contact_item])

    respond_to do |format|
      if @fnbl_pim_contact_item.save
        format.html { redirect_to @fnbl_pim_contact_item, notice: 'Fnbl pim contact item was successfully created.' }
        format.json { render json: @fnbl_pim_contact_item, status: :created, location: @fnbl_pim_contact_item }
      else
        format.html { render action: "new" }
        format.json { render json: @fnbl_pim_contact_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fnbl_pim_contact_items/1
  # PUT /fnbl_pim_contact_items/1.json
  def update
    @fnbl_pim_contact_item = FnblPimContactItem.find(params[:id])

    respond_to do |format|
      if @fnbl_pim_contact_item.update_attributes(params[:fnbl_pim_contact_item])
        format.html { redirect_to @fnbl_pim_contact_item, notice: 'Fnbl pim contact item was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fnbl_pim_contact_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fnbl_pim_contact_items/1
  # DELETE /fnbl_pim_contact_items/1.json
  def destroy
    @fnbl_pim_contact_item = FnblPimContactItem.find(params[:id])
    @fnbl_pim_contact_item.destroy

    respond_to do |format|
      format.html { redirect_to fnbl_pim_contact_items_url }
      format.json { head :ok }
    end
  end
end
