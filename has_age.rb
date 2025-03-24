module HasAge
  def has_age(column: :dob)
    define_method(:age) do |at: Time.current|
      Age.new(public_send(column)).at(at)
    end
  end
end

ActiveSupport.on_load(:active_model) do
  extend HasAge
end


ActiveSupport.on_load(:active_record) do
  extend HasAge
end