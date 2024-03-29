json.extract! task, :id, :name, :description, :criticality, :due_date, :status, :level, :priority, :created_at, :updated_at
json.url task_url(task, format: :json)
