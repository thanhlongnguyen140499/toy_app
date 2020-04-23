class DeletedsController < ApplicationController
  before_action :set_deleted, only: [:show, :edit, :update, :destroy]

  # GET /deleteds
  # GET /deleteds.json
  def index
    @deleteds = Deleted.all
  end

  # GET /deleteds/1
  # GET /deleteds/1.json
  def show
  end

  # GET /deleteds/new
  def new
    @deleted = Deleted.new
  end

  # GET /deleteds/1/edit
  def edit
  end

  # POST /deleteds
  # POST /deleteds.json
  def create
    @deleted = Deleted.new(deleted_params)

    respond_to do |format|
      if @deleted.save
        format.html { redirect_to @deleted, notice: 'Deleted was successfully created.' }
        format.json { render :show, status: :created, location: @deleted }
      else
        format.html { render :new }
        format.json { render json: @deleted.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deleteds/1
  # PATCH/PUT /deleteds/1.json
  def update
    respond_to do |format|
      if @deleted.update(deleted_params)
        format.html { redirect_to @deleted, notice: 'Deleted was successfully updated.' }
        format.json { render :show, status: :ok, location: @deleted }
      else
        format.html { render :edit }
        format.json { render json: @deleted.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deleteds/1
  # DELETE /deleteds/1.json
  def destroy
    @deleted.destroy
    respond_to do |format|
      format.html { redirect_to deleteds_url, notice: 'Deleted was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deleted
      @deleted = Deleted.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deleted_params
      params.fetch(:deleted, {})
    end
end
