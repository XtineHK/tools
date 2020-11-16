class ToolsController < ApplicationController
  def index
    @tool = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  private

  def tool_params
    params.require(:tool).permit(:daily_price, :location, :description, :name, photo:[])
  end
end
