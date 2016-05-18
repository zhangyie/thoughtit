json.array!(@contracts) do |contract|
  json.extract! contract, :id, :project_id, :ctitle, :cbegin, :cend, :cproduct, :cservice, :cimplement, :cprogram, :cthird, :ckingdee, :cmemo
  json.url contract_url(contract, format: :json)
end
