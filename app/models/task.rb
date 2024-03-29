# TASK MODEL
class Task < ApplicationRecord
  enum status: {
    not_started: 0,
    in_progress: 1,
    done: 2
  }
  enum level: {
    normal: 0,
    primordial: 1,
    urgent: 2
  }

  belongs_to :folder
  belongs_to :referent

  def check_level
    :level.normal if criticality <= 3
    :level.primordial if criticality <= 6
    :level.urgent if criticality > 6
  end
end
