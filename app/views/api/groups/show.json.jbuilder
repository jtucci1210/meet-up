json.groups do
    json.set! @group.id do
        json.extract! @group, :id, :title, :description, :location, :private
        json.photoUrl @group.photo.attached? ? url_for(@group.photo) : "https://feetup-seeds.s3-us-west-1.amazonaws.com/no_photo.jpg"
        json.created_at @group.created_at.to_date.to_s
        json.members do
            json.array! @group.users.pluck(:id)
        end
    end
end
json.users do 
    @group.users.each do |user|
        json.set! user.id do 
            json.extract! user, :id, :username
            json.created_at user.created_at.to_date.to_s
        end
    end
end
json.events do 
    @group.events.each do |event|
        json.set! event.id do
            json.extract! event, :id, :name, :description, :venue_location, :creator_id, :cost
            json.date event.date.to_date.to_s
            json.photoUrl event.photo.attached? ? url_for(event.photo) : "https://feetup-seeds.s3-us-west-1.amazonaws.com/no_photo.jpg"
            json.attendees do
                json.array! event.attendees.pluck(:id)
            end
        end
    end
end