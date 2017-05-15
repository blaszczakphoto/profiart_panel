require "administrate/field/base"

class TechnologiesField < Administrate::Field::Base
  def to_s
    data
  end

  def list
  	%(html jquery presta wordpress rails css javascript)
  end
end
