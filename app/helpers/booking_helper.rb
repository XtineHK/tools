module BookingHelper
  def french_status(booking)
    case booking.status
    when "declined"  then "refusée"
    when "pending"   then "en attente"
    when "confirmed" then "acceptée"
    end
  end
end
