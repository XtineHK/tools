class ProfilesController < ApplicationController
  def show
    @user = current_user
    @my_own_bookings = @user.bookings.order(begin_date: :desc) #je suis locataire
    @my_tools = @user.tools
    # @bookings = @user.bookings_as_owner
    @bookings = Booking.joins(:tool).where(tools: { user: current_user }).order(begin_date: :desc) #je suis proprio
  end
end


# <<~SQL
# select * FROM bookings JOIN tools ON bookings.tool_id = tools.id
# WHERE tools.user_id = current_user.id
# SQL
