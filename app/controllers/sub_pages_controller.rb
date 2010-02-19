class SubPagesController < ApplicationController
  # GET /sub_pages
  # GET /sub_pages.xml
  def index
    @sub_pages = SubPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sub_pages }
    end
  end

  # GET /sub_pages/1
  # GET /sub_pages/1.xml
  def show
    @sub_page = SubPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sub_page }
    end
  end

  # GET /sub_pages/new
  # GET /sub_pages/new.xml
  def new
    @sub_page = SubPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sub_page }
    end
  end

  # GET /sub_pages/1/edit
  def edit
    @sub_page = SubPage.find(params[:id])
  end

  # POST /sub_pages
  # POST /sub_pages.xml
  def create
    @sub_page = SubPage.new(params[:sub_page])

    respond_to do |format|
      if @sub_page.save
        flash[:notice] = 'SubPage was successfully created.'
        format.html { redirect_to(@sub_page) }
        format.xml  { render :xml => @sub_page, :status => :created, :location => @sub_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sub_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sub_pages/1
  # PUT /sub_pages/1.xml
  def update
    @sub_page = SubPage.find(params[:id])

    respond_to do |format|
      if @sub_page.update_attributes(params[:sub_page])
        flash[:notice] = 'SubPage was successfully updated.'
        format.html { redirect_to(@sub_page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sub_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_pages/1
  # DELETE /sub_pages/1.xml
  def destroy
    @sub_page = SubPage.find(params[:id])
    @sub_page.destroy

    respond_to do |format|
      format.html { redirect_to(sub_pages_url) }
      format.xml  { head :ok }
    end
  end
end
