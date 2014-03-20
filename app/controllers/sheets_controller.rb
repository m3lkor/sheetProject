class SheetsController < ApplicationController
  
  before_filter :authenticate_user!
  
  # GET /sheets
  # GET /sheets.json
  
  
  def index
    
    #@sheets = Sheet.include(:game).where("user_id = ?", current_user.id)
    @sheets = current_user.sheets.includes(:game)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sheets }
    end
  end

  # GET /sheets/1
  # GET /sheets/1.json
  def show
    @sheets = Sheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sheets }
    end
  end

  # GET /sheets/new
  # GET /sheets/new.json
  def new
    if user_signed_in?
      @sheets = Sheet.new
    end


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sheets }
    end
  end

  # GET /sheets/1/edit
  def edit
    @sheets = Sheet.find(params[:id])
  end

  # POST /sheets
  # POST /sheets.json
  def create

    @sheets = Sheet.new(params[:sheet])
    @sheets.user_id = current_user.id
    @sheets.player_name = current_user.player_name.capitalize    

    respond_to do |format|
      if @sheets.save
        format.html { redirect_to @sheets, notice: 'Sheet was successfully created.' }
        format.json { render json: @sheets, status: :created, location: @sheets }
      else
        format.html { render action: "new" }
        format.json { render json: @sheets.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sheets/1
  # PUT /sheets/1.json
  def update
    @sheets = Sheet.find(params[:id])

    respond_to do |format|
      if @sheets.update_attributes(params[:sheet])
        format.html { redirect_to @sheets, notice: 'Sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sheets.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/1
  # DELETE /sheets/1.json
  def destroy
    @sheets = Sheet.find(params[:id])
    @sheets.destroy

    respond_to do |format|
      format.html { redirect_to sheets_url }
      format.json { head :no_content }
    end
  end
end
