class ProjectsController < ApplicationController
  def new
    @title = "New Project"
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:success] = "Created new project: #{@project.name}"
      redirect_to(projects_path)
    else
      @title = "New Project"
      render 'new'
    end
  end
    

  def index
    @title = "All projects"
    @projects = Project.paginate(:page => params[:page])
  end
  
  def destroy
    Project.find(params[:id]).destroy
    flash[:success] = "Project destroyed"
    redirect_to projects_path
  end

end
