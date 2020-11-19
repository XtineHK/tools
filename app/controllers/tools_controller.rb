class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @tool = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def destroy
    @my_tool = Tool.find(params[:id])
    @my_tool.destroy
    redirect_to my_tools_url, notice: 'Tool was successfully destroyed.'
  end

  private

  def tool_params
    params.require(:tool).permit(:daily_price, :location, :description, :name, :photo)
  end
end
