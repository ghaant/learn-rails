# frozen_string_literal: true

class Owner
  def name
    name = 'Foobar Kadigan'
  end

  def birthdate
    birthdate = Date.new(1990, 12, 22)
  end

  def countdown
    today = Date.today
    birthday = Date.new(today.year, birthdate.month, birthdate.day)
    countdown = if birthday > today
                  (birthday - today).to_i
                else
                  (birthday.next_year - today).to_i
                end
  end
end
