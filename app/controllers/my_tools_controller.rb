class MyToolsController < ApplicationController
  def index
    @my_tools = current_user.tools
    Tool.where(user: current_user)
  end

  def show
    @my_tool = Tool.find(params[:id])
  end

  def new
    @my_tool = Tool.new
  end

  def create
    @my_tool = Tool.new(my_tool_params)
    @my_tool.user = current_user
    if @my_tool.save
      redirect_to my_tools_path(@my_tool)
    else
      render :new
    end
  end

  def edit
    @my_tool = Tool.find(params[:id])
  end

  # def update
  #   my_tool = Tool.find(params[:id])
  #   my_tool.update(tool_params)
  #   redirect_to my_tool_path(@my_tool)
  # end

  def update
    @tool = Tool.find(params[:id])
    if @tool.update(my_tool_params)
      redirect_to @tool, notice: 'Tool was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tool.destroy
    redirect_to my_tools, notice: 'Tool was successfully destroyed.'
  end

  private

  def my_tool_params
    params.require(:tool).permit(:daily_price, :location, :description, :name, :photo)
  end
end
