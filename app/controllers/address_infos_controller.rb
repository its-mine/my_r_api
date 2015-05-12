class AddressInfosController < ApplicationController
  # GET /address_infos
  # GET /address_infos.json
  def index
    @address_infos = AddressInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @address_infos }
    end
  end

  # GET /address_infos/1
  # GET /address_infos/1.json
  def show
    @address_info = AddressInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @address_info }
    end
  end

  # GET /address_infos/new
  # GET /address_infos/new.json
  def new
    @address_info = AddressInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @address_info }
    end
  end

  # GET /address_infos/1/edit
  def edit
    @address_info = AddressInfo.find(params[:id])
  end

  # POST /address_infos
  # POST /address_infos.json
  def create
    @address_info = AddressInfo.new(params[:address_info])

    respond_to do |format|
      if @address_info.save
        format.html { redirect_to @address_info, notice: 'Address info was successfully created.' }
        format.json { render json: @address_info, status: :created, location: @address_info }
      else
        format.html { render action: "new" }
        format.json { render json: @address_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /address_infos/1
  # PUT /address_infos/1.json
  def update
    @address_info = AddressInfo.find(params[:id])

    respond_to do |format|
      if @address_info.update_attributes(params[:address_info])
        format.html { redirect_to @address_info, notice: 'Address info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @address_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_infos/1
  # DELETE /address_infos/1.json
  def destroy
    @address_info = AddressInfo.find(params[:id])
    @address_info.destroy

    respond_to do |format|
      format.html { redirect_to address_infos_url }
      format.json { head :no_content }
    end
  end
end
