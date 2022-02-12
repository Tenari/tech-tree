class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @stuff = Stuff.find(params[:stuff_id])
    @recipes = @stuff.recipes
  end

  def show
  end

  def new
    @recipe = Recipe.new(stuff_id: params[:stuff_id])
  end

  def material
    return render partial: 'material', locals: {material: RecipeMaterial.new(quantity: 1, unit: 'item') }
  end

  def tool
    return render partial: 'tool', locals: {tool: RecipeTool.new(quantity: 1) }
  end

  def edit
  end

  def create
    params[:recipe].permit!
    @recipe = Recipe.new(recipe_params)
    @recipe.steps = params[:recipe][:steps].map {|s| Step.new(s.to_h)}.select {|s| s.valid?}
    @recipe.recipe_materials = params[:recipe][:recipe_materials].map { |rm| RecipeMaterial.new(rm.to_h) }.select {|rm| Stuff.exists?(rm.stuff_id)}
    @recipe.recipe_tools = params[:recipe][:recipe_tools].map { |rt| RecipeTool.new(rt.to_h) }.select {|rt| Stuff.exists?(rt.stuff_id)}

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    params[:recipe].permit!
    @recipe.steps.delete_all
    @recipe.steps = params[:recipe][:steps].map {|s| Step.new(s.to_h)}.select {|s| s.valid?}

    @recipe.recipe_materials.delete_all
    @recipe.recipe_materials = params[:recipe][:recipe_materials].map { |rm| RecipeMaterial.new(rm.to_h) }.select {|rm| Stuff.exists?(rm.stuff_id)}

    @recipe.recipe_tools.delete_all
    @recipe.recipe_tools = params[:recipe][:recipe_tools].map { |rt| RecipeTool.new(rt.to_h) }.select {|rt| Stuff.exists?(rt.stuff_id)}

    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    stuff = @recipe.stuff
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to stuff, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:name, :steps, :stuff_id, :source, :demonstration)
    end
end
