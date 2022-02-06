class GenericToolsController < ApplicationController
  before_action :set_generic_tool, only: [:show, :edit, :update, :destroy]

  # GET /generic_tools
  # GET /generic_tools.json
  def index
    @generic_tools = GenericTool.all
  end

  # GET /generic_tools/1
  # GET /generic_tools/1.json
  def show
  end

  # GET /generic_tools/new
  def new
    @generic_tool = GenericTool.new
  end

  # GET /generic_tools/1/edit
  def edit
  end

  # POST /generic_tools
  # POST /generic_tools.json
  def create
    @generic_tool = GenericTool.new(generic_tool_params)

    respond_to do |format|
      if @generic_tool.save
        format.html { redirect_to @generic_tool, notice: 'Generic tool was successfully created.' }
        format.json { render :show, status: :created, location: @generic_tool }
      else
        format.html { render :new }
        format.json { render json: @generic_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generic_tools/1
  # PATCH/PUT /generic_tools/1.json
  def update
    respond_to do |format|
      if @generic_tool.update(generic_tool_params)
        format.html { redirect_to @generic_tool, notice: 'Generic tool was successfully updated.' }
        format.json { render :show, status: :ok, location: @generic_tool }
      else
        format.html { render :edit }
        format.json { render json: @generic_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generic_tools/1
  # DELETE /generic_tools/1.json
  def destroy
    @generic_tool.destroy
    respond_to do |format|
      format.html { redirect_to generic_tools_url, notice: 'Generic tool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generic_tool
      @generic_tool = GenericTool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generic_tool_params
      params.require(:generic_tool).permit(:name, :description)
    end
end
