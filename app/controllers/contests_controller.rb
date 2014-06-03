class ContestsController < ApplicationController


  def index
    @contests = Contest.all
  end

  def show
  end

  def new
    @contest = Contest.new
  end

  def create
  	@contest = Contest.new(contest_params) 
  	if @contest.save
  		redirect_to about_path, :notice => 'Project saved successfully'
  	else
  		redirect_to root_path, :notice => 'Project not saved'
  	end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  def contest_params
  	params.require(:contest).permit(:title, :description)
  end

end
