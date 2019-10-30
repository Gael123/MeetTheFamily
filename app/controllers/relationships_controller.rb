class RelationshipsController < ApplicationController
  before_action do
    @person = Person.find(params[:person_id])
  end

  def index
    @relationships = @person.relationships

    respond_to do |format|
      format.html
      format.json { render json: @relationships }
    end
  end

  def show
    @relationship = Relationship.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @relationship }
    end
  end

  def new
    @relationship = @person.relationships.new
    if params[:person_id].present?
        @relationship.person_id = params[:person_id]
      end
    respond_to do |format|
      format.html
      format.json { render json: @relationship }
    end
  end

  def create
    @relationship = @person.relationships.new(relationships_params)

    respond_to do |format|
      if @relationship.save
        format.html { redirect_to person_relationship_path(@person, @relationship), notice: 'Relationship was successfully created.' }
        format.json { render json: @relationship, status: :created, location: @relationship }
      else
        format.html { render action: 'new' }
        format.json { render json: @relationship.errors, status: :unprocessable_entity }
      end
    end
  end
  private
  def relationships_params
    params.require(:relationships).permit(:relationship_type.name, :person_id, :related_person_id)
  end



end
