class FareInfosController < ApplicationController
  # GET /fare_infos
  # GET /fare_infos.json
  def index
    @fare_infos = FareInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fare_infos }
    end
  end

  # GET /fare_infos/1
  # GET /fare_infos/1.json
  def show
    @fare_info = FareInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fare_info }
    end
  end

  # GET /fare_infos/new
  # GET /fare_infos/new.json
  def new
    @fare_info = FareInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fare_info }
    end
  end

  # GET /fare_infos/1/edit
  def edit
    @fare_info = FareInfo.find(params[:id])
  end

  # POST /fare_infos
  # POST /fare_infos.json
  def create
    @fare_info = FareInfo.new(params[:fare_info])

    respond_to do |format|
      if @fare_info.save
        format.html { redirect_to @fare_info, notice: 'Fare info was successfully created.' }
        format.json { render json: @fare_info, status: :created, location: @fare_info }
      else
        format.html { render action: "new" }
        format.json { render json: @fare_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fare_infos/1
  # PUT /fare_infos/1.json
  def update
    @fare_info = FareInfo.find(params[:id])

    respond_to do |format|
      if @fare_info.update_attributes(params[:fare_info])
        format.html { redirect_to @fare_info, notice: 'Fare info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fare_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fare_infos/1
  # DELETE /fare_infos/1.json
  def destroy
    @fare_info = FareInfo.find(params[:id])
    @fare_info.destroy

    respond_to do |format|
      format.html { redirect_to fare_infos_url }
      format.json { head :no_content }
    end
  end
end
