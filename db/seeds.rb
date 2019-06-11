users_list = {
    "Rye Rayne" => {
      :username => "ryerayne",
      :email => "ryerayne@hotmail.com",
      :password => "safepassword"
    },
    "Liz Willow" => {
      :username => "lizwillow",
      :email => "lizwillow@hotmail.com",
      :password => "anotherpassword"
    },
    "Mari Williams" => {
      :username => "mariwilliams",
      :email => "mariwilliams@hotmail.com",
      :password => "neverguessit"
    },
    "Arin VanDyke" => {
      :username => "arinvandyke",
      :email => "arinvandyke@hotmail.com",
      :password => "secretpassword"
    },
    "Lucas Smiley" => {
      :username => "lucassmiley",
      :email => "lucassmiley@hotmail.com",
      :password => "cantguessme"
    }
  }

users_list.each do |name, user_hash|
  p = User.new
  p.name = name
  user_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

mountains_list = {
    "Mount Wilson" => {
      :range => "SoCal Mountains",
      :height => "4,500 ft.",
      :prominence => "4,300 ft.",
      :country => "USA"
    },
    "Mount Rainier" => {
      :range => "Cascades",
      :height => "12,000 ft.",
      :prominence => "8,000 ft.",
      :country => "USA"
    },
    "Denali" => {
      :range => "Alaskan Mountains",
      :height => "20,000 ft.",
      :prominence => "19,000 ft.",
      :country => "USA"
    },
    "Mount Everest" => {
      :range => "Himalayas",
      :height => "18,000 ft.",
      :prominence => "16,000 ft.",
      :country => "Nepal"
    },
    "Mount Mitchell" => {
      :range => "Appalachians",
      :height => "4,500 ft.",
      :prominence => "2,500 ft.",
      :country => "USA"
    }
  }

mountains_list.each do |name, mountain_hash|
  p = Mountain.new
  p.name = name
  mountain_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

trails_list = {
    "Rye Rayne" => {

    },
    "Liz Willow" => {

    },
    "Mari Williams" => {

    },
    "Arin VanDyke" => {

    },
    "Lucas Smiley" => {

    }
  }

trails_list.each do |name, user_hash|
  p = User.new
  p.name = name
  user_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

user_mountains_list = {
    "Rye Rayne" => {

    },
    "Liz Willow" => {

    },
    "Mari Williams" => {

    },
    "Arin VanDyke" => {

    },
    "Lucas Smiley" => {

    }
  }

user_mountains_list.each do |name, user_mountain_hash|
  p = UserMountain.new
  p.name = name
  user_mountain_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

user_trails_list = {
    "Rye Rayne" => {

    },
    "Liz Willow" => {

    },
    "Mari Williams" => {

    },
    "Arin VanDyke" => {

    },
    "Lucas Smiley" => {

    }
  }

user_trails_list.each do |name, user_trails_hash|
  p = UserTrail.new
  user_trails_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

trips_list = {
    "Rye Rayne" => {

    },
    "Liz Willow" => {

    },
    "Mari Williams" => {

    },
    "Arin VanDyke" => {

    },
    "Lucas Smiley" => {

    }
  }

trips_list.each do |name, trip_hash|
  p = Trip.new
  p.name = name
  trip_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end
