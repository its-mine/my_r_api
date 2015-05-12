class DomainHostsController < ApplicationController
  # GET /domain_hosts
  # GET /domain_hosts.json
  def index
    @domain_hosts = DomainHost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @domain_hosts }
    end
  end

  # GET /domain_hosts/1
  # GET /domain_hosts/1.json
  def show
    @domain_host = DomainHost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @domain_host }
    end
  end

  # GET /domain_hosts/new
  # GET /domain_hosts/new.json
  def new
    @domain_host = DomainHost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @domain_host }
    end
  end

  # GET /domain_hosts/1/edit
  def edit
    @domain_host = DomainHost.find(params[:id])
  end

  # POST /domain_hosts
  # POST /domain_hosts.json
  def create
    @domain_host = DomainHost.new(params[:domain_host])

    respond_to do |format|
      if @domain_host.save
        format.html { redirect_to @domain_host, notice: 'Domain host was successfully created.' }
        format.json { render json: @domain_host, status: :created, location: @domain_host }
      else
        format.html { render action: "new" }
        format.json { render json: @domain_host.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /domain_hosts/1
  # PUT /domain_hosts/1.json
  def update
    @domain_host = DomainHost.find(params[:id])

    respond_to do |format|
      if @domain_host.update_attributes(params[:domain_host])
        format.html { redirect_to @domain_host, notice: 'Domain host was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @domain_host.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /domain_hosts/1
  # DELETE /domain_hosts/1.json
  def destroy
    @domain_host = DomainHost.find(params[:id])
    @domain_host.destroy

    respond_to do |format|
      format.html { redirect_to domain_hosts_url }
      format.json { head :no_content }
    end
  end
end
