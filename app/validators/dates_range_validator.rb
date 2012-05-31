class DatesRangeValidator < ActiveModel::Validator
  def validate(record)
    return record.errors[:date] << 'La fecha es invalida' if record.date.nil?

    unless record.date >= Date.today
      record.errors[:date] << 'La fecha no es mayor'
    end
  end
end
