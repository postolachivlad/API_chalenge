json.array! @messages do |message|
  json.extract! message, :id, :message, :counter
end
