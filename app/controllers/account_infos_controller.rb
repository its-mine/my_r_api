class AccountInfosController < ApplicationController
  # GET /account_infos
  # GET /account_infos.json
  def index
    @account_infos = AccountInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @account_infos }
    end
  end

  # GET /account_infos/1
  # GET /account_infos/1.json
  def show
    @account_info = AccountInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @account_info }
    end
  end

  # GET /account_infos/new
  # GET /account_infos/new.json
  def new
    @account_info = AccountInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @account_info }
    end
  end

  # GET /account_infos/1/edit
  def edit
    @account_info = AccountInfo.find(params[:id])
  end

  # POST /account_infos
  # POST /account_infos.json
  def create
    @account_info = AccountInfo.new(params[:account_info])

    respond_to do |format|
      if @account_info.save
        format.html { redirect_to @account_info, notice: 'Account info was successfully created.' }
        format.json { render json: @account_info, status: :created, location: @account_info }
      else
        format.html { render action: "new" }
        format.json { render json: @account_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /account_infos/1
  # PUT /account_infos/1.json
  def update
    @account_info = AccountInfo.find(params[:id])

    respond_to do |format|
      if @account_info.update_attributes(params[:account_info])
        format.html { redirect_to @account_info, notice: 'Account info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @account_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_infos/1
  # DELETE /account_infos/1.json
  def destroy
    @account_info = AccountInfo.find(params[:id])
    @account_info.destroy

    respond_to do |format|
      format.html { redirect_to account_infos_url }
      format.json { head :no_content }
    end
  end
end
