# created using 'rails g controller api/v1/contacts' on the terminal - allows us to version our API
class Api::V1::ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]

  # Landing page for the API
  def welcome
    # This was originally meant to render the template in app/views/api,
    # but for some reason the 'render :template' only returns a blank page on the browser.
    # Resorted to using 'render: text' to document endpoints of the API.
    # render :template => "api/documentation" (code is commented because it doesn't work)
    render text: '
    Welcome to the Contacts Catalog API.

    Important information about people can be found here. All information is stored in JSON format.

    To see all contacts, visit the /api/v1/contacts endpoint.
    To see individual contacts, visit the /api/v1/contacts/:id endpoint and replace :id with id found in /contacts.
    '
  end

  # GET /api/v1/contacts
  def index
    @contacts = Contact.all

    # render json: @contacts, status: :ok
    respond_to do |format|
      format.json { render json: @contacts }
    end
  end

  # GET /api/v1/contacts/:id
  def show
    # render json: @contact
    respond_to do |format|
      format.json { render json: @contact }
    end
  end

  # POST /api/v1/contacts
  def create
    @contact = Contact.new(contact_params)

    # once contact is created it will return http status 201 'Created'
    @contact.save
    # render json: @contact, status: :created
    respond_to do |format|
      format.json { render json: @contact }
    end
  end

  # PATCH/PUT /api/v1/contacts/:id
  def update
    if @contact.update(contact_params)
      head(:no_content)
    else
      # render json: @contact.errors, status: :unprocessable_entity
      respond_to do |format|
        format.json { render json: @contact.errors }
      end
    end
  end

  # DELETE /api/v1/contacts/:id
  def destroy
    @contact.destroy

    if @contact.destroy
      # head is the rails way of returning just the content in the header
      # if everything went correctly with destruction, simply return ok
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :age, :phone_number, :email, :computer_languages, :pets)
    end
end
