# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user_admin = User.where(email: 'admin@user').first_or_initialize
user_admin.update!(
  role: :admin,
  password: 'password',
  password_confirmation: 'password'
)

user_regular = User.where(email: 'regular@user').first_or_initialize
user_regular.update!(
  role: :regular,
  password: 'password',
  password_confirmation: 'password'
)

dossier_exemple = Folder.where(name: 'DossierExemple').first_or_initialize
dossier_exemple.update!(
  description: "Dossier Exemple"
)


referent_john = Referent.where(name: 'John').first_or_initialize
referent_john.update!(
  email: 'john.vannaemen@hubruxelles.be'
)
referent_etienne = Referent.where(name: 'Etienne').first_or_initialize
referent_etienne.update!(
  email: 'etienne.luciani@hubruxelles.be'
)

task_1 = Task.where(name: "Task Test").first_or_initialize
task_1.update!(
  description: 'Task de test',
  criticality: 1,
  due_date: "2024/06/15",
  status: 0,
  level: 0,
  priority: 0,
  referent: referent_etienne,
  folder: dossier_exemple
)

