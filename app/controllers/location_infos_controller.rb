class LocationInfosController < ApplicationController
  # GET /location_infos
  # GET /location_infos.json
  def index
    @location_infos = LocationInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @location_infos }
    end
  end

  # GET /location_infos/1
  # GET /location_infos/1.json
  def show
    @location_info = LocationInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @location_info }
    end
  end

  # GET /location_infos/new
  # GET /location_infos/new.json
  def new
    @location_info = LocationInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @location_info }
    end
  end

  # GET /location_infos/1/edit
  def edit
    @location_info = LocationInfo.find(params[:id])
  end

  # POST /location_infos
  # POST /location_infos.json
  def create
    @location_info = LocationInfo.new(params[:location_info])

    respond_to do |format|
      if @location_info.save
        format.html { redirect_to @location_info, notice: 'Location info was successfully created.' }
        format.json { render json: @location_info, status: :created, location: @location_info }
      else
        format.html { render action: "new" }
        format.json { render json: @location_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /location_infos/1
  # PUT /location_infos/1.json
  def update
    @location_info = LocationInfo.find(params[:id])

    respond_to do |format|
      if @location_info.update_attributes(params[:location_info])
        format.html { redirect_to @location_info, notice: 'Location info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @location_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /location_infos/1
  # DELETE /location_infos/1.json
  def destroy
    @location_info = LocationInfo.find(params[:id])
    @location_info.destroy

    respond_to do |format|
      format.html { redirect_to location_infos_url }
      format.json { head :no_content }
    end
  end
end
