class ListingImagesController < ApplicationController
  # GET /listing_images
  # GET /listing_images.xml
  def index
    @listing_images = ListingImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @listing_images }
    end
  end

  # GET /listing_images/1
  # GET /listing_images/1.xml
  def show
    @listing_image = ListingImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @listing_image }
    end
  end

  # GET /listing_images/new
  # GET /listing_images/new.xml
  def new
    @listing_image = ListingImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @listing_image }
    end
  end

  # GET /listing_images/1/edit
  def edit
    @listing_image = ListingImage.find(params[:id])
  end

  # POST /listing_images
  # POST /listing_images.xml
  def create
    @listing_image = ListingImage.new(params[:listing_image])

    respond_to do |format|
      if @listing_image.save
        flash[:notice] = 'ListingImage was successfully created.'
        format.html { redirect_to(@listing_image) }
        format.xml  { render :xml => @listing_image, :status => :created, :location => @listing_image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @listing_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /listing_images/1
  # PUT /listing_images/1.xml
  def update
    @listing_image = ListingImage.find(params[:id])

    respond_to do |format|
      if @listing_image.update_attributes(params[:listing_image])
        flash[:notice] = 'ListingImage was successfully updated.'
        format.html { redirect_to(@listing_image) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @listing_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /listing_images/1
  # DELETE /listing_images/1.xml
  def destroy
    @listing_image = ListingImage.find(params[:id])
    @listing_image.destroy

    respond_to do |format|
      format.html { redirect_to(listing_images_url) }
      format.xml  { head :ok }
    end
  end
end
