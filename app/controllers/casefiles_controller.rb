class CasefilesController < ApplicationController
  # GET /casefiles
  # GET /casefiles.xml
  def index
    @casefiles = Casefile.all
    @casefiles = Casefile.where("doctor_id = ?", params[:doctor_id]) if params[:doctor_id]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @casefiles }
    end
  end

  # GET /casefiles/1
  # GET /casefiles/1.xml
  def show
    @casefile = Casefile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @casefile }
    end
  end

  # GET /casefiles/new
  # GET /casefiles/new.xml
  def new
    @casefile = Casefile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @casefile }
    end
  end

  # GET /casefiles/1/edit
  def edit
    @casefile = Casefile.find(params[:id])
    @casefile.rating_tag = params[:rating_tag] if params[:rating_tag]
  end

  # POST /casefiles
  # POST /casefiles.xml
  def create
    @casefile = Casefile.new(params[:casefile])
    @casefile.rating_tag = params[:rating_tag] if params[:rating_tag]

    respond_to do |format|
      if @casefile.save
        format.html { redirect_to(@casefile, :notice => 'Casefile was successfully created.') }
        format.xml  { render :xml => @casefile, :status => :created, :location => @casefile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @casefile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /casefiles/1
  # PUT /casefiles/1.xml
  def update
    @casefile = Casefile.find(params[:id])

    respond_to do |format|
      if @casefile.update_attributes(params[:casefile])
        format.html { redirect_to(@casefile, :notice => 'Casefile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @casefile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /casefiles/1
  # DELETE /casefiles/1.xml
  def destroy
    @casefile = Casefile.find(params[:id])
    @casefile.destroy

    respond_to do |format|
      format.html { redirect_to(casefiles_url) }
      format.xml  { head :ok }
    end
  end
end
