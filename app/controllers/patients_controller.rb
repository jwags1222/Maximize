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
    @patient = Patient.new 
  end

  def create

  end

  def import

    Patient.import(params[:file])
    flash[:notice] = "Patients imported"
    redirect_to root_path 

  end  

end 