class StuffsController < ApplicationController
  before_action :set_stuff, only: [:show, :edit, :update, :destroy, :tree]

  def index
    @stuffs = Stuff.all
  end

  def show; end

  def tree; end

  def new
    @stuff = Stuff.new(parent_id: params[:parent_id])
  end

  def edit; end

  def create
    @stuff = Stuff.new(stuff_params)

    respond_to do |format|
      if @stuff.save
        format.html { redirect_to @stuff, notice: 'Stuff was successfully created.' }
        format.json { render :show, status: :created, location: @stuff }
      else
        format.html { render :new }
        format.json { render json: @stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @stuff.update(stuff_params)
        format.html { redirect_to @stuff, notice: 'Stuff was successfully updated.' }
        format.json { render :show, status: :ok, location: @stuff }
      else
        format.html { render :edit }
        format.json { render json: @stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stuff.destroy
    respond_to do |format|
      format.html { redirect_to stuffs_url, notice: 'Stuff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stuff
      @stuff = Stuff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stuff_params
      params.require(:stuff).permit(:name, :description, :notes, :image, :parent_id)
    end
end
