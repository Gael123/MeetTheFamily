class PeopleController < ApplicationController
  def index
    @people = Person.all
    # @people = People.arrange(:order => :created_at)
    respond_to do |format|
      format.html
      format.json { render json: @people }
    end
  end

  def show
    @person = Person.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @people }
    end
  end

  def create
    @person = Person.new(person_params)
    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was created.' }
        format.json { render json: @person, status: :created, location: @person }
      else
        format.html { render action: 'new' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @person = Person.new(mother_id: params[:mother_id])

    respond_to do |format|
      format.html
      format.json
    end
  end

  private

  def person_params
    params.require(:person).permit(:first_name, :second_name, :date_of_birth)
  end
end
