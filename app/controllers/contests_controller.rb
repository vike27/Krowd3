class ContestsController < ApplicationController


  def index
    @contests = Contest.all
  end

  def show
    @contest = Contest.find(params[:id])
  end

  def new
    @contest = Contest.new
  end

  def create
  	@contest = Contest.new(contest_params) 
  	if @contest.save
      flash[:success] = "Contest created successfully!"
  		redirect_to @contest
  	else
      flash[:danger] = "Contest could not be created"
  		redirect_to new_contest_path
  	end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  def contest_params
  	params.require(:contest).permit(:title, :description, :image)
  end

end
