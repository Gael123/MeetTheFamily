class RelationshipTypesController < ApplicationController
  def index
    @relationship_types = RelationshipType.all
    respond_to do |format|
      format.html
      format.json { render json: @relationship_types }
    end
  end

  def show
    @relationship_type = RelationshipType.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @relationship_type }
    end
  end

  def new
    @relationship_type = RelationshipType.new

    respond_to do |format|
      format.html
      format.json { render json: @relationship_type }
    end
  end

  def edit
    @relationship_type = RelationshipType.find(params[:id])
  end

  def create
    @relationship_type = RelationshipType.new(relationship_type_params)

    respond_to do |format|
      if @relationship_type.save
        format.html { redirect_to @relationship_type, notice: 'relationship type created' }
        format.json { render json: @relationship_type, status: :created, location: @relationship_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @relationship_type.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def relationship_type_params
    params.require(:relationship_type).permit(:forward_name, :backward_name)
  end
end
