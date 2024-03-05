class Game < ApplicationRecord
  def time_to_int (timeString, amPm) # the actual xx:yy and am/pm
    timeString.delete(':')
    timeInt = timeString.to_i
    if amPm == pm
      timeInt += 1200
      return timeInt
    else
      return timeInt
    end
  end

  def timeint_to_timestring (timeInt)
    if timeInt >= 1300
      timeInt = timeInt - 1200
      amPm = 'pm'
    else
      amPm = 'am'
    end
    timeString = timeInt.to_s
    timeString.insert(2, ':')
  end
end
