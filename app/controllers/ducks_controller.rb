class DucksController < ApplicationController

  before_filter :find_duck, only: [:show, :edit, :update, :destroy]

  # GET /ducks
  # GET /ducks.json
  def index
    @ducks = Duck.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ducks }
    end
  end

  # GET /ducks/1
  # GET /ducks/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @duck }
    end
  end

  # GET /ducks/new
  # GET /ducks/new.json
  def new
    @duck = Duck.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @duck }
    end
  end

  # GET /ducks/1/edit
  def edit
  end

  # POST /ducks
  # POST /ducks.json
  def create
    @duck = Duck.new(params[:duck])

    respond_to do |format|
      if @duck.save
        format.html { redirect_to @duck, notice: 'Duck was successfully created.' }
        format.json { render json: @duck, status: :created, location: @duck }
      else
        format.html { render action: "new" }
        format.json { render json: @duck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ducks/1
  # PUT /ducks/1.json
  def update
    respond_to do |format|
      if @duck.update_attributes(params[:duck])
        format.html { redirect_to @duck, notice: 'Duck was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @duck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ducks/1
  # DELETE /ducks/1.json
  def destroy
    @duck.destroy

    respond_to do |format|
      format.html { redirect_to ducks_url }
      format.json { head :no_content }
    end
  end

  private

  def find_duck
    @duck = Duck.find(params[:id])
  end
end
