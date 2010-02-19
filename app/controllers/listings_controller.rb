class ListingsController < ApplicationController
  # GET /listings
  # GET /listings.xml
  def index
    @listings = Listing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @listings }
    end
  end

  # GET /listings/1
  # GET /listings/1.xml
  def show
    if is_amf
      @listing = Listing.find(params[0][:id])
    else
      @listing = Listing.find(params[:id])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @listing }
      format.amf  { render :amf => @listing }
    end
  end

  # GET /listings/new
  # GET /listings/new.xml
  def new
    @listing = Listing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @listing }
    end
  end

  # GET /listings/1/edit
  def edit
    @listing = Listing.find(params[:id])
  end

  # POST /listings
  # POST /listings.xml
  def create
    @listing = Listing.new(params[:listing])

    respond_to do |format|
      if @listing.save
        flash[:notice] = 'Listing was successfully created.'
        format.html { redirect_to(@listing) }
        format.xml  { render :xml => @listing, :status => :created, :location => @listing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @listing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /listings/1
  # PUT /listings/1.xml
  def update
    @listing = Listing.find(params[:id])

    respond_to do |format|
      if @listing.update_attributes(params[:listing])
        flash[:notice] = 'Listing was successfully updated.'
        format.html { redirect_to(@listing) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @listing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.xml
  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy

    respond_to do |format|
      format.html { redirect_to(listings_url) }
      format.xml  { head :ok }
    end
  end
  
  def search
    if is_amf
      s = ActsAsXapian::Search.new([Listing], params[0][:query], :limit => params[0][:limit], :sort_by_prefix => "created_at")
      @listings = s.results.collect {|p| p[:model]}
    else
      s = ActsAsXapian::Search.new([Listing], params[:query], :limit => params[:limit])
      @listings = s.results.collect {|p| p[:model]}
    end
    
    respond_to do |format|
      format.amf  { render :amf => @listings }
    end
  end
  
  def categories
    if is_amf
      s = Listing.all
      @listings = s
    else
      s = Listing.all
      @listings = s
    end
    
    respond_to do |format|
      format.amf  { render :amf => @listings }
    end
  end
  
  def category
    if is_amf
      @listings = Listing.find(:all, :conditions => {:category_id => params[0][:id]}, :order => "created_at DESC")
    else
      @listings = Listing.find(:all, :conditions => {:category_id => params[:id]}, :order => "created_at DESC")
    end
    
    respond_to do |format|
      format.amf  { render :amf => @listings }
    end
  end
  
  def type
    if is_amf
      @listings = Listing.find(:all, :conditions => {:category_id => params[0][:id]}, :order => "created_at DESC")
    else
      @listings = Listing.find(:all, :conditions => {:category_id => params[:id]}, :order => "created_at DESC")
    end
    
    respond_to do |format|
      format.amf  { render :amf => @listings }
    end
  end
end
