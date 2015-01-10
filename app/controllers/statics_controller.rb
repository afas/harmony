class StaticsController < ApplicationController

  def idea
    @page = :idea
    @static = Static.find_by_short_url("conception")
    render :show
  end

  def person
    @page = :person
    @static = Static.find_by_short_url("person")
    render :show
  end

  # GET /statics
  # GET /statics.json
  def index
    @statics = Static.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @statics }
    end
  end

  # GET /statics/1
  # GET /statics/1.json
  def show
    @static = Static.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @static }
    end
  end

  def new
  @static = Static.new

  respond_to do |format|
     format.html # new.html.erb
     format.json { render json: @static }
  end
  end

  def edit
  @static = Static.find(params[:id])
  end

  def create
  @static = Static.new(params[:static])

  respond_to do |format|
     if @static.save
       format.html { redirect_to @static, notice: 'Static was successfully created.' }
       format.json { render json: @static, status: :created, location: @static }
     else
       format.html { render action: "new" }
       format.json { render json: @static.errors, status: :unprocessable_entity }
     end
  end
  end

  def update
  @static = Static.find(params[:id])

  respond_to do |format|
     if @static.update_attributes(params[:static])
       format.html { redirect_to @static, notice: 'Static was successfully updated.' }
       format.json { head :no_content }
     else
       format.html { render action: "edit" }
       format.json { render json: @static.errors, status: :unprocessable_entity }
     end
  end
  end

  def destroy
  @static = Static.find(params[:id])
  @static.destroy

  respond_to do |format|
     format.html { redirect_to statics_url }
     format.json { head :no_content }
  end
  end
end
