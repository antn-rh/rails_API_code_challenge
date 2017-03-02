# from the active_model_serializers gem - allows us to server custom JSON
class Api::V1::ContactsSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :phone_number, :email, :computer_languages, :pets
end
