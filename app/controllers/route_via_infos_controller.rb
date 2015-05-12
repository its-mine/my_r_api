class RouteViaInfosController < ApplicationController
  # GET /route_via_infos
  # GET /route_via_infos.json
  def index
    @route_via_infos = RouteViaInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @route_via_infos }
    end
  end

  # GET /route_via_infos/1
  # GET /route_via_infos/1.json
  def show
    @route_via_info = RouteViaInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @route_via_info }
    end
  end

  # GET /route_via_infos/new
  # GET /route_via_infos/new.json
  def new
    @route_via_info = RouteViaInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @route_via_info }
    end
  end

  # GET /route_via_infos/1/edit
  def edit
    @route_via_info = RouteViaInfo.find(params[:id])
  end

  # POST /route_via_infos
  # POST /route_via_infos.json
  def create
    @route_via_info = RouteViaInfo.new(params[:route_via_info])

    respond_to do |format|
      if @route_via_info.save
        format.html { redirect_to @route_via_info, notice: 'Route via info was successfully created.' }
        format.json { render json: @route_via_info, status: :created, location: @route_via_info }
      else
        format.html { render action: "new" }
        format.json { render json: @route_via_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /route_via_infos/1
  # PUT /route_via_infos/1.json
  def update
    @route_via_info = RouteViaInfo.find(params[:id])

    respond_to do |format|
      if @route_via_info.update_attributes(params[:route_via_info])
        format.html { redirect_to @route_via_info, notice: 'Route via info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @route_via_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_via_infos/1
  # DELETE /route_via_infos/1.json
  def destroy
    @route_via_info = RouteViaInfo.find(params[:id])
    @route_via_info.destroy

    respond_to do |format|
      format.html { redirect_to route_via_infos_url }
      format.json { head :no_content }
    end
  end
end
