class AulasController < ApplicationController
  before_action :set_aula, only: [:show, :edit, :update, :destroy]
  before_action :set_seccao
  before_action :set_curso
  before_action :authenticate_user!
  access student: [:show, :index], instructor: :all, admin: :all
  # GET /aulas
  # GET /aulas.json
  def index
    @aulas = @secco.aulas
  end

  # GET /aulas/1
  # GET /aulas/1.json
  def show
  end

  # GET /aulas/new
  def new
    @aula = Aula.new
  end

  # GET /aulas/1/edit
  def edit
  end

  # POST /aulas
  # POST /aulas.json
  def create
    @aula = @secco.aulas.build(aula_params)

    respond_to do |format|
      if @aula.save
        format.html { redirect_to curso_secco_aula_path(@curso, @secco,@aula), notice: 'Aula was successfully created.' }
        format.json { render :show, status: :created, location: @aula }
      else
        format.html { render :new }
        format.json { render json: @aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aulas/1
  # PATCH/PUT /aulas/1.json
  def update
    respond_to do |format|
      if @aula.update(aula_params)
        format.html { redirect_to curso_secco_aula_path(@curso, @secco,@aula), notice: 'Aula was successfully updated.' }
        format.json { render :show, status: :ok, location: @aula }
      else
        format.html { render :edit }
        format.json { render json: @aula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aulas/1
  # DELETE /aulas/1.json
  def destroy
    @aula.destroy
    respond_to do |format|
      format.html { redirect_to curso_secco_aulas_url(@curso, @secco), notice: 'Aula was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aula
      @aula = Aula.find(params[:id])
    end

    def set_seccao
      @secco = Secco.find(params[:secco_id])
    end

    def set_curso
      @curso = Curso.find(params[:curso_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def aula_params
      params.require(:aula).permit(:titulo, :conteudo, :referencias)
    end
end
