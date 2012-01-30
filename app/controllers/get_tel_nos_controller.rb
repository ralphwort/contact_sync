class GetTelNosController < ApplicationController
  def get_tel_nos
    @fnbl_pim_contact = FnblPimContact.all
#    @fnbl_pim_contact.where("userid = 'vodafone'")
#    @fnbl_pim_contacts = FnblPimContact.all
#    @fnbl_pim_contacts.each do |fnbl_pim_contact|
#
#    respond_to do |format|
#      format.html # index.html.erb
#      format.json { render json: @fnbl_pim_contacts }
#    end
#  end
#    @fnbl_pim_contacts = FnblPimContact.all
#    respond_to do |format|
#      format.html # index.html.erb
#      format.json { render json: @fnbl_pim_contacts.fnbl_pim_contact_items.to_json(:only => [:type, :last_name]) }
#    end

#    respond_to do |format|
#      format.html # index.html.erb
#    end
#    @fnbl_pim_contacts = FnblPimContact.where("userid = '" + params[:username] + "'")

#    respond_to do |format|
#      @fnbl_pim_contacts.each do |fnbl_pim_contact|
#        fnbl_pim_contact.fnbl_pim_contact_items.each do |fnbl_pim_contact_item|
#          format.html
#          format.json { render json: fnbl_pim_contact_item.to_json(:only => [:type, :last_name]) }
#        end
#      end
#    end
  end

end
