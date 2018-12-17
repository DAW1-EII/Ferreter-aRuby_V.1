class CurrentusersController < ApplicationController
  before_action :set_currentuser, only: [:show, :edit, :update, :destroy]

  # GET /currentusers
  # GET /currentusers.json
  def index
    @currentusers = Currentuser.all
  end

  # GET /currentusers/1
  # GET /currentusers/1.json
  def show
  end

  # GET /currentusers/new
  def new
    @currentuser = Currentuser.new
  end

  # GET /currentusers/1/edit
  def edit
  end

  # POST /currentusers
  # POST /currentusers.json
  def create
    @currentuser = Currentuser.new(currentuser_params)

    respond_to do |format|
      if @currentuser.save
        format.html { redirect_to @currentuser, notice: 'Currentuser was successfully created.' }
        format.json { render :show, status: :created, location: @currentuser }
      else
        format.html { render :new }
        format.json { render json: @currentuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /currentusers/1
  # PATCH/PUT /currentusers/1.json
  def update
    respond_to do |format|
      if @currentuser.update(currentuser_params)
        format.html { redirect_to @currentuser, notice: 'Currentuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @currentuser }
      else
        format.html { render :edit }
        format.json { render json: @currentuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /currentusers/1
  # DELETE /currentusers/1.json
  def destroy
    @currentuser.destroy
    respond_to do |format|
      format.html { redirect_to currentusers_url, notice: 'Currentuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_currentuser
      @currentuser = Currentuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def currentuser_params
      params.require(:currentuser).permit(:name, :email, :password, :dni, :telephone, :dir, :number, :cp)
    end
end
