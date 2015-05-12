class PartnerInfosController < ApplicationController
  # GET /partner_infos
  # GET /partner_infos.json
  def index
    @partner_infos = PartnerInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partner_infos }
    end
  end

  # GET /partner_infos/1
  # GET /partner_infos/1.json
  def show
    @partner_info = PartnerInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partner_info }
    end
  end

  # GET /partner_infos/new
  # GET /partner_infos/new.json
  def new
    @partner_info = PartnerInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partner_info }
    end
  end

  # GET /partner_infos/1/edit
  def edit
    @partner_info = PartnerInfo.find(params[:id])
  end

  # POST /partner_infos
  # POST /partner_infos.json
  def create
    @partner_info = PartnerInfo.new(params[:partner_info])

    respond_to do |format|
      if @partner_info.save
        format.html { redirect_to @partner_info, notice: 'Partner info was successfully created.' }
        format.json { render json: @partner_info, status: :created, location: @partner_info }
      else
        format.html { render action: "new" }
        format.json { render json: @partner_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partner_infos/1
  # PUT /partner_infos/1.json
  def update
    @partner_info = PartnerInfo.find(params[:id])

    respond_to do |format|
      if @partner_info.update_attributes(params[:partner_info])
        format.html { redirect_to @partner_info, notice: 'Partner info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partner_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partner_infos/1
  # DELETE /partner_infos/1.json
  def destroy
    @partner_info = PartnerInfo.find(params[:id])
    @partner_info.destroy

    respond_to do |format|
      format.html { redirect_to partner_infos_url }
      format.json { head :no_content }
    end
  end
end
