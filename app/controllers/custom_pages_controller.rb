class CustomPagesController < ApplicationController
  # GET /custom_pages
  # GET /custom_pages.xml
  def index
    @custom_pages = CustomPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @custom_pages }
    end
  end

  # GET /custom_pages/1
  # GET /custom_pages/1.xml
  def show
    @custom_page = CustomPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @custom_page }
    end
  end

  # GET /custom_pages/new
  # GET /custom_pages/new.xml
  def new
    @custom_page = CustomPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @custom_page }
    end
  end

  # GET /custom_pages/1/edit
  def edit
    @custom_page = CustomPage.find(params[:id])
  end

  # POST /custom_pages
  # POST /custom_pages.xml
  def create
    @custom_page = CustomPage.new(params[:custom_page])

    respond_to do |format|
      if @custom_page.save
        flash[:notice] = 'CustomPage was successfully created.'
        format.html { redirect_to(@custom_page) }
        format.xml  { render :xml => @custom_page, :status => :created, :location => @custom_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @custom_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /custom_pages/1
  # PUT /custom_pages/1.xml
  def update
    @custom_page = CustomPage.find(params[:id])

    respond_to do |format|
      if @custom_page.update_attributes(params[:custom_page])
        flash[:notice] = 'CustomPage was successfully updated.'
        format.html { redirect_to(@custom_page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @custom_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_pages/1
  # DELETE /custom_pages/1.xml
  def destroy
    @custom_page = CustomPage.find(params[:id])
    @custom_page.destroy

    respond_to do |format|
      format.html { redirect_to(custom_pages_url) }
      format.xml  { head :ok }
    end
  end
end
