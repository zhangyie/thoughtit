json.array!(@projects) do |project|
  json.extract! project, :id, :ptitle, :pcustom, :ptype, :pprice, :pdate, :psales, :psource, :pstate
  json.url project_url(project, format: :json)
end
