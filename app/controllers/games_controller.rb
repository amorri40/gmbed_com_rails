class GamesController < ApplicationController
  before_filter :authenticate_user!  
  
  # GET /games
  # GET /games.json
  def index
    #@games = Game.all

    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @games }
    #end
    redirect_to play_path
  end

  # GET /games/1
  # GET /games/1.json
  def show
    @game = Game.find(params[:id])

    #respond_to do |format|
    #  format.html # show.html.erb
    #  format.json { render json: @game }
    #end
    redirect_to "/game/"+(@game.name)
  end

  # GET /games/new
  # GET /games/new.json
  def new
    @game = Game.new
    respond_to do |format|
      format.html #"/play/upload.html.erb" # new.html.erb
      format.json { render json: @game }
    end
  end

  # GET /games/1/edit
  def edit
    @game = Game.find(params[:id])
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(params[:game])

    respond_to do |format|
      if @game.save
        format.html { redirect_to "/game/"+(@game.name), notice: 'Game was successfully created.' }
      else
        format.html { render "/play/upload.html.erb"}
      end
    end
  end

  # PUT /games/1
  # PUT /games/1.json
  def update
    @game = Game.find(params[:id])

    respond_to do |format|
      if @game.update_attributes(params[:game])
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    respond_to do |format|
      format.html { redirect_to play_path, notice: 'Game was deleted!' }
      format.json { head :no_content }
    end
  end
  

  
end
