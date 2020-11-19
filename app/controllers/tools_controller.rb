class ToolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @tools = Tool.all

    @markers = @tools.geocoded.map do |tool|
          {
            lat: tool.latitude,
            lng: tool.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { tool: tool })
          }
        end
  end


  def show
    @tool = Tool.find(params[:id])
  end

  private

  def tool_params
    params.require(:tool).permit(:daily_price, :location, :description, :name, :photo)
  end
end
