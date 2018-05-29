class AdjunctsController < ApplicationController
  before_action :set_adjunct, only: [:show, :edit, :update, :destroy]

  # GET /adjuncts
  # GET /adjuncts.json
  def index
    @adjuncts = Adjunct.all
  end

  # GET /adjuncts/1
  # GET /adjuncts/1.json
  def show
  end

  # GET /adjuncts/new
  def new
    @adjunct = Adjunct.new
  end

  # GET /adjuncts/1/edit
  def edit
  end

  # POST /adjuncts
  # POST /adjuncts.json
  def create
    @adjunct = Adjunct.new(adjunct_params)

    respond_to do |format|
      if @adjunct.save
        format.html { redirect_to @adjunct, notice: 'Adjunct was successfully created.' }
        format.json { render :show, status: :created, location: @adjunct }
      else
        format.html { render :new }
        format.json { render json: @adjunct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adjuncts/1
  # PATCH/PUT /adjuncts/1.json
  def update
    respond_to do |format|
      if @adjunct.update(adjunct_params)
        format.html { redirect_to @adjunct, notice: 'Adjunct was successfully updated.' }
        format.json { render :show, status: :ok, location: @adjunct }
      else
        format.html { render :edit }
        format.json { render json: @adjunct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adjuncts/1
  # DELETE /adjuncts/1.json
  def destroy
    @adjunct.destroy
    respond_to do |format|
      format.html { redirect_to adjuncts_url, notice: 'Adjunct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adjunct
      @adjunct = Adjunct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adjunct_params
      params.require(:adjunct).permit(:nombre, :descripcion, :file, :request_id)
    end
end
