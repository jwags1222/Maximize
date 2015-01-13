class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
     @patient = Patient.find(params[:id])
     @post = Post.new
     @comment = Comment.new 
  end 

  def new
    @plans = Plan.all 
    @patient = Patient.new 
  end

  def create

  end

  def edit

  end 

  def import

    binding.pry

    Patient.import(params[:file], Plan.find(params[:plan]))
    flash[:notice] = "Patients imported"
    redirect_to root_path 

  end  

end 