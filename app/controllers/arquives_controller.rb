class ArquivesController < ApplicationController
  before_action :set_arquife, only: [:show, :edit, :update, :destroy]

  # GET /arquives
  # GET /arquives.json
  def index
    @arquives = Arquive.all
  end

  # GET /arquives/1
  # GET /arquives/1.json
  def show
  end

  # GET /arquives/new
  def new
    @arquife = Arquive.new
  end

  # GET /arquives/1/edit
  def edit
  end

  # POST /arquives
  # POST /arquives.json
  def create
    @arquife = Arquive.new(arquife_params)

    respond_to do |format|
      if @arquife.save
        format.html { redirect_to @arquife, notice: 'Arquive was successfully created.' }
        format.json { render :show, status: :created, location: @arquife }
      else
        format.html { render :new }
        format.json { render json: @arquife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arquives/1
  # PATCH/PUT /arquives/1.json
  def update
    respond_to do |format|
      if @arquife.update(arquife_params)
        format.html { redirect_to @arquife, notice: 'Arquive was successfully updated.' }
        format.json { render :show, status: :ok, location: @arquife }
      else
        format.html { render :edit }
        format.json { render json: @arquife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arquives/1
  # DELETE /arquives/1.json
  def destroy
    @arquife.destroy
    respond_to do |format|
      format.html { redirect_to arquives_url, notice: 'Arquive was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arquife
      @arquife = Arquive.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arquife_params
      params.require(:arquife).permit(:path, :classe_id, :course_id)
    end
end
