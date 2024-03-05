class GamesController < ApplicationController
    before_action :set_game, only: %i[ show edit update destroy ]

  # GET /games or /games.json
  def index
    @game = Game.all
  end

  # Get /games/1 or /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games or /games.json
  def create
    @game = Game.new(game_params)
    if @game.save
      flash.notice = "The game was created sucessfully."
      redirect_to @game
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
    if @game.update(game_params)
      flash.notice = "The game was updated sucessfully."
      redirect_to @game
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:game_name, :time_start, :time_end)
  end
end

