class MyToolsController < ApplicationController
  def index
    @my_tools = current_user.tools
    #Tool.where(user: current_user)
  end

  def show
    #@my_tool = MyTool.find(params[:id])
  end

  def new
    #@my_tool = MyTool.new
  end

  def create
    # @my_tool = MyTool.new(my_tool_params)
    # my_tool.save
    # redirect_to my_tool_path(@my_tool)
  end

  def edit
    #@my_tool = MyTool.find(params[:id])
  end

  def update
    # my_tool = MyTool.find(params[:id])
    # my_tool.update(my_tool_params)
    # redirect_to my_tool_path(my_tool)
  end

  def destroy
    # my_tool = MyTool.find(params[:id])
    # MyTool.destroy
  end

  private

  def my_tool_params
    #params.require(:my_tool).permit(:daily_price, :location, :description, :name, photo:[])
  end
end
