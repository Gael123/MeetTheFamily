class RelationshipsController < ApplicationController
  before_filter do
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
    respond_to do |format|
      format.html
      format.json { render json: @relationship }
    end
  end

  def create
    @relationship = @person.relationships.new(params[:relationship])

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
end
