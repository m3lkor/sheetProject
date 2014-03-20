class GdrModulesController < ApplicationController
  # GET /gdr_modules
  # GET /gdr_modules.json
  def index
    @gdr_modules = GdrModule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gdr_modules }
    end
  end

  # GET /gdr_modules/1
  # GET /gdr_modules/1.json
  def show
    @gdr_module = GdrModule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gdr_module }
    end
  end

  # GET /gdr_modules/new
  # GET /gdr_modules/new.json
  def new
     @gdr_module = GdrModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gdr_module }
    end
  end

  # GET /gdr_modules/1/edit
  def edit
    @gdr_module = GdrModule.find(params[:id])
  end

  # POST /gdr_modules
  # POST /gdr_modules.json
  def create
    Rails.logger.info "\n\n\n\n#{params.inspect}\n\n\n"
    game = Game.find_by_id(params["gdr_module"]["game_id"])
    @gdr_module = game.gdr_modules.build(params[:gdr_module])
    @gdr_module.module_name = "#{@gdr_module.game.game_name}_#{@gdr_module.module_name}"
    #@gdr_module = GdrModule.new(params[:gdr_module])

    respond_to do |format|
      if @gdr_module.save
        format.html { redirect_to @gdr_module, notice: 'Gdr module was successfully created.' }
        format.json { render json: @gdr_module, status: :created, location: @gdr_module }
      else
        format.html { render action: "new" }
        format.json { render json: @gdr_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gdr_modules/1
  # PUT /gdr_modules/1.json
  def update
    @gdr_module = GdrModule.find(params[:id])

    respond_to do |format|
      if @gdr_module.update_attributes(params[:gdr_module])
        format.html { redirect_to @gdr_module, notice: 'Gdr module was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gdr_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gdr_modules/1
  # DELETE /gdr_modules/1.json
  def destroy
    @gdr_module = GdrModule.find(params[:id])
    @gdr_module.destroy

    respond_to do |format|
      format.html { redirect_to gdr_modules_url }
      format.json { head :no_content }
    end
  end
end
