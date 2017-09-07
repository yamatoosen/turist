class TuristsController < ApplicationController
  before_action :set_turist, only: [:show, :edit, :update, :destroy]

  # GET /turists
  # GET /turists.json
  def index
    @turists = Turist.all
  end

  # GET /turists/1
  # GET /turists/1.json
  def show
  end

  # GET /turists/new
  def new
    @turist = Turist.new
  end

  # GET /turists/1/edit
  def edit
  end

  # POST /turists
  # POST /turists.json
  def create
    @turist = Turist.new(turist_params)

    respond_to do |format|
      if @turist.save
        format.html { redirect_to @turist, notice: 'Turist was successfully created.' }
        format.json { render :show, status: :created, location: @turist }
      else
        format.html { render :new }
        format.json { render json: @turist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turists/1
  # PATCH/PUT /turists/1.json
  def update
    respond_to do |format|
      if @turist.update(turist_params)
        format.html { redirect_to @turist, notice: 'Turist was successfully updated.' }
        format.json { render :show, status: :ok, location: @turist }
      else
        format.html { render :edit }
        format.json { render json: @turist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turists/1
  # DELETE /turists/1.json
  def destroy
    @turist.destroy
    respond_to do |format|
      format.html { redirect_to turists_url, notice: 'Turist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turist
      @turist = Turist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turist_params
      params.require(:turist).permit(:name, :crust, :sauce, :toppings, :cost, :image)
    end
end
