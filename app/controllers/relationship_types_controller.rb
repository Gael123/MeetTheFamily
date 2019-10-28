class RelationshipTypesController < ApplicationController
  def index
    @relationship_types = RelationshipType.all
    respond_to do |format|
      format.html
      format.json { render json: @relationship_type }
    end
  end

 def show
  @relationship_types = RelationshipType.find(params[:id])

  respond_to do | format|
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

end
