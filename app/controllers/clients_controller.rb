class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  before_action :set_locale

  def set_locale
    session[:locale] = params[:locale]
    I18n.locale = session[:locale] || I18n.default_locale
  end
  
  # GET /clients
  # GET /clients.json
  def index
    # @clients = Client.all
    @clients = Client.filter(params.slice(:q)).order("uid" + " " + "ASC")
    #@products = Product.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to clients_path, notice: 'Client was successfully created.' }
        format.json { render :index, status: :created, location: clients_path }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to clients_path, notice: 'Client was successfully updated.' }
        format.json { render :index, status: :ok, location: clients_path }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:uname, :uid, :contract, :companyname, :address, :p2p_net, :net, :comments, :contacts, :phones, :email)
    end
end
