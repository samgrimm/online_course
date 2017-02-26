class SeccosController < ApplicationController
  before_action :set_seccao, only: [:show, :edit, :update, :destroy]
  before_action :set_curso
  # GET /seccos
  # GET /seccos.json
  def index
    @seccoes = @curso.seccos
  end

  # GET /seccos/1
  # GET /seccos/1.json
  def show
  end

  # GET /seccos/new
  def new
    @secco = Secco.new
  end

  # GET /seccos/1/edit
  def edit
  end

  # POST /seccos
  # POST /seccos.json
  def create
    @secco = @curso.seccos.build(secco_params)

    respond_to do |format|
      if @secco.save
        format.html { redirect_to curso_secco_path(@curso, @secco), notice: 'Seccao was successfully created.' }
        format.json { render :show, status: :created, location: @secco }
      else
        format.html { render :new }
        format.json { render json: @secco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seccos/1
  # PATCH/PUT /seccos/1.json
  def update
    respond_to do |format|
      if @secco.update(secco_params)
        format.html { redirect_to curso_secco_path(@curso, @secco), notice: 'Seccao was successfully updated.' }
        format.json { render :show, status: :ok, location: @secco }
      else
        format.html { render :edit }
        format.json { render json: @secco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seccos/1
  # DELETE /seccos/1.json
  def destroy
    @secco.destroy
    respond_to do |format|
      format.html { redirect_to curso_seccos_url, notice: 'Secco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seccao
      @secco = Secco.find(params[:id])
    end

    def set_curso
      @curso = Curso.find(params[:curso_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secco_params
      params.require(:secco).permit(:titulo, :resumo)
    end
end
