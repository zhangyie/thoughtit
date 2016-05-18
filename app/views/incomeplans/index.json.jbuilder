json.array!(@incomeplans) do |incomeplan|
  json.extract! incomeplan, :id, :contract_id, :ititle, :iprice, :idate
  json.url incomeplan_url(incomeplan, format: :json)
end
