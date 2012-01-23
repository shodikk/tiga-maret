class ProduksController < ApplicationController
  # GET /produks
  # GET /produks.xml
  def index
    @produks = Produk.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @produks }
    end
  end

  # GET /produks/1
  # GET /produks/1.xml
  def show
    @produk = Produk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @produk }
    end
  end

  # GET /produks/new
  # GET /produks/new.xml
  def new
    @produk = Produk.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @produk }
    end
  end

  # GET /produks/1/edit
  def edit
    @produk = Produk.find(params[:id])
  end

  # POST /produks
  # POST /produks.xml
  def create
    @produk = Produk.new(params[:produk])

    respond_to do |format|
      if @produk.save
        format.html { redirect_to(@produk, :notice => 'Produk was successfully created.') }
        format.xml  { render :xml => @produk, :status => :created, :location => @produk }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @produk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /produks/1
  # PUT /produks/1.xml
  def update
    @produk = Produk.find(params[:id])

    respond_to do |format|
      if @produk.update_attributes(params[:produk])
        format.html { redirect_to(@produk, :notice => 'Produk was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @produk.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /produks/1
  # DELETE /produks/1.xml
  def destroy
    @produk = Produk.find(params[:id])
    @produk.destroy

    respond_to do |format|
      format.html { redirect_to(produks_url) }
      format.xml  { head :ok }
    end
  end
end
