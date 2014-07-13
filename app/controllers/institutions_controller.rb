class InstitutionsController < ApplicationController

  def index
  @institutions = Institution.all
  end

  def show
    @institution = Institution.find(params[:id])
  end

  def new
    @institution = Institution.new
  end

  def create
    @institution = Institution.new(institution_params)
    if 
      @institution.save
      redirect_to @institution
    else
      render 'new'
    end
  end

  def edit
    @institution = Institution.find(params[:id])
  end

  def update
    @institution = Institution.find(params[:id])
    if 
      @institution.update(institution_params)
      redirect_to @institution
    else
      render 'edit'
    end
  end

  def destroy
    @institution = Institution.find(param[:id])
    @institution.destroy
    redirect_to institutions_path
  end

  private
  def institution_params
    params.require(:institution).permit(:inst_name, :inst_add1, :inst_add2, :inst_city, :inst_state, :inst_zip, :inst_url, :inst_phone)
  end
end
