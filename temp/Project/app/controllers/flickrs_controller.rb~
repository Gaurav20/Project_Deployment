class FlickrsController < ApplicationController
  # GET /flickrs
  # GET /flickrs.json
  def index
    flickrs = Flickr.getPhotos('79392001@N05')
    @photos = flickrs.parsed_response['rsp']['photos']['photo']

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @flickrs }
    end
  end

  # GET /flickrs/1
  # GET /flickrs/1.json
  def show
    @flickr = Flickr.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flickr }
    end
  end

  # GET /flickrs/new
  # GET /flickrs/new.json
  def new
    @flickr = Flickr.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flickr }
    end
  end

  # GET /flickrs/1/edit
  def edit
    @flickr = Flickr.find(params[:id])
  end

  # POST /flickrs
  # POST /flickrs.json
  def create
    @flickr = Flickr.new(params[:flickr])

    respond_to do |format|
      if @flickr.save
        format.html { redirect_to @flickr, notice: 'Flickr was successfully created.' }
        format.json { render json: @flickr, status: :created, location: @flickr }
      else
        format.html { render action: "new" }
        format.json { render json: @flickr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flickrs/1
  # PUT /flickrs/1.json
  def update
    @flickr = Flickr.find(params[:id])

    respond_to do |format|
      if @flickr.update_attributes(params[:flickr])
        format.html { redirect_to @flickr, notice: 'Flickr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flickr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flickrs/1
  # DELETE /flickrs/1.json
  def destroy
    @flickr = Flickr.find(params[:id])
    @flickr.destroy

    respond_to do |format|
      format.html { redirect_to flickrs_url }
      format.json { head :no_content }
    end
  end
end
