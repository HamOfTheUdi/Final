class TransporteursController < ApplicationController
  before_action :set_transporteur, only: %i[ show edit update destroy ]

  # GET /transporteurs or /transporteurs.json
  def index
    @transporteurs = Transporteur.all
  end

  # GET /transporteurs/1 or /transporteurs/1.json
  def show
  end

  # GET /transporteurs/new
  def new
    @transporteur = Transporteur.new
  end

  # GET /transporteurs/1/edit
  def edit
  end

  # POST /transporteurs or /transporteurs.json
  def create
    @transporteur = Transporteur.new(transporteur_params)

    respond_to do |format|
      if @transporteur.save
        format.html { redirect_to @transporteur, notice: "Transporteur was successfully created." }
        format.json { render :show, status: :created, location: @transporteur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transporteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transporteurs/1 or /transporteurs/1.json
  def update
    respond_to do |format|
      if @transporteur.update(transporteur_params)
        format.html { redirect_to @transporteur, notice: "Transporteur was successfully updated." }
        format.json { render :show, status: :ok, location: @transporteur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transporteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transporteurs/1 or /transporteurs/1.json
  def destroy
    @transporteur.destroy!

    respond_to do |format|
      format.html { redirect_to transporteurs_path, status: :see_other, notice: "Transporteur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transporteur
      @transporteur = Transporteur.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def transporteur_params
      params.expect(transporteur: [ :nom, :telephone, :email ])
    end
end
