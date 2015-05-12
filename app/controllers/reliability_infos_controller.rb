class ReliabilityInfosController < ApplicationController
  # GET /reliability_infos
  # GET /reliability_infos.json
  def index
    @reliability_infos = ReliabilityInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reliability_infos }
    end
  end

  # GET /reliability_infos/1
  # GET /reliability_infos/1.json
  def show
    @reliability_info = ReliabilityInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reliability_info }
    end
  end

  # GET /reliability_infos/new
  # GET /reliability_infos/new.json
  def new
    @reliability_info = ReliabilityInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reliability_info }
    end
  end

  # GET /reliability_infos/1/edit
  def edit
    @reliability_info = ReliabilityInfo.find(params[:id])
  end

  # POST /reliability_infos
  # POST /reliability_infos.json
  def create
    @reliability_info = ReliabilityInfo.new(params[:reliability_info])

    respond_to do |format|
      if @reliability_info.save
        format.html { redirect_to @reliability_info, notice: 'Reliability info was successfully created.' }
        format.json { render json: @reliability_info, status: :created, location: @reliability_info }
      else
        format.html { render action: "new" }
        format.json { render json: @reliability_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reliability_infos/1
  # PUT /reliability_infos/1.json
  def update
    @reliability_info = ReliabilityInfo.find(params[:id])

    respond_to do |format|
      if @reliability_info.update_attributes(params[:reliability_info])
        format.html { redirect_to @reliability_info, notice: 'Reliability info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reliability_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reliability_infos/1
  # DELETE /reliability_infos/1.json
  def destroy
    @reliability_info = ReliabilityInfo.find(params[:id])
    @reliability_info.destroy

    respond_to do |format|
      format.html { redirect_to reliability_infos_url }
      format.json { head :no_content }
    end
  end
end
