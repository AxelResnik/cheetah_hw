# View of the API products by producer
json.array! @producers do |producer|
  json.producer producer.name
  json.products producer.products
end