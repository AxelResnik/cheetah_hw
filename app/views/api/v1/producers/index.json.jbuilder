json.array! @producers do |producer|
  json.name producer.name
  json.products producer.products
end