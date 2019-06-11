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
    "The Old Route" => {
      :length => "8 miles",
      :difficulty => "easy",
      :mountain_id => 1
    },
    "The New Route" => {
      :length => "7 miles",
      :difficulty => "easy",
      :mountain_id => 2
    },
    "Wizard's Way" => {
      :length => "7 miles",
      :difficulty => "easy",
      :mountain_id => 3
    },
    "The Unicorn Trail" => {
      :length => "16 miles",
      :difficulty => "moderate",
      :mountain_id => 4
    },
    "Cloud View Path" => {
      :length => "15 miles",
      :difficulty => "moderate",
      :mountain_id => 5
    },
    "The Bucket List Trail" => {
      :length => "23 miles",
      :difficulty => "moderate",
      :mountain_id => 1
    },
    "Friends in High Place Route" => {
      :length => "2 miles",
      :difficulty => "strenous",
      :mountain_id => 1
    },
    "Ten Miler Way" => {
      :length => "10 miles",
      :difficulty => "strenous",
      :mountain_id => 2
    },
    "A New Path" => {
      :length => "3 miles",
      :difficulty => "strenous",
      :mountain_id => 3
    },
    "This Way or the Highway" => {
      :length => "10 miles",
      :difficulty => "moderate",
      :mountain_id => 3
    }
  }

trails_list.each do |name, trail_hash|
  p = Trail.new
  p.name = name
  trail_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

user_mountains_list = {
    {
      :user_id => 1,
      :mountain_id => 1
    },
    {
      :user_id => 1,
      :mountain_id => 2
    },
    {
      :user_id => 1,
      :mountain_id => 3
    },
    {
      :user_id => 2,
      :mountain_id => 4
    },
    {
      :user_id => 2,
      :mountain_id => 5
    }
    {
      :user_id => 3,
      :mountain_id => 1
    },
    {
      :user_id => 3,
      :mountain_id => 2
    },
    {
      :user_id => 3,
      :mountain_id => 4
    },
    {
      :user_id => 4,
      :mountain_id => 3
    },
    {
      :user_id => 5,
      :mountain_id => 3
    }
  }

user_mountains_list.each do |user_mountain_hash|
  p = UserMountain.new
  user_mountain_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

user_trails_list = {
    {
      :user_id => 1,
      :trail_id => 1
    },
    {
      :user_id => 1,
      :trail_id => 2
    },
    {
      :user_id => 1,
      :trail_id => 3
    },
    {
      :user_id => 2,
      :trail_id => 4
    },
    {
      :user_id => 2,
      :trail_id => 5
    }
    {
      :user_id => 3,
      :trail_id => 1
    },
    {
      :user_id => 3,
      :trail_id => 2
    },
    {
      :user_id => 3,
      :trail_id => 4
    },
    {
      :user_id => 4,
      :trail_id => 3
    },
    {
      :user_id => 5,
      :trail_id => 3
    }
    {
      :user_id => 1,
      :trail_id => 6
    },
    {
      :user_id => 1,
      :trail_id => 7
    },
    {
      :user_id => 1,
      :trail_id => 8
    },
    {
      :user_id => 2,
      :trail_id => 9
    },
    {
      :user_id => 2,
      :trail_id => 10
    },
    {
      :user_id => 3,
      :trail_id => 6
    },
    {
      :user_id => 3,
      :trail_id => 7
    },
    {
      :user_id => 3,
      :trail_id => 8
    },
    {
      :user_id => 4,
      :trail_id => 9
    },
    {
      :user_id => 5,
      :trail_id => 10
    }
  }

user_trails_list.each do |user_trail_hash|
  p = UserTrail.new
  user_trail_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

trips_list = {
    "Birthday Hike" => {
      :user_id => 1,
      :trail_id => 1,
      :year => 2009,
      :month => 4,
      :day => 15,
      :notes => "happy bday!"
    },
    "Anniversary Hike" => {
      :user_id => 1,
      :trail_id => 2,
      :year => 2010,
      :month => 05,
      :day => 13,
      :notes => "happy anniversary!"
    },
    "Graduation Hike" => {
      :user_id => 2,
      :trail_id => 3,
      :year => 2019,
      :month => 8,
      :day => 1,
      :notes => "we made it!"
    },
    "New Year's Hike" => {
      :user_id => 2,
      :trail_id => 4,
      :year => 2019,
      :month => 1,
      :day => 1,
      :notes => "to a new year"
    },
    "Valentine's Hike" => {
      :user_id => 3,
      :trail_id => 5,
      :year => 2018,
      :month => 2,
      :day => 14,
      :notes => "rainy and romantic"
    }
    "Fourth of July Hike" => {
      :user_id => 3,
      :trail_id => 6,
      :year => 2017,
      :month => 7,
      :day => 4,
      :notes => "hot and sunny"
    },
    "Memorial Day Hike" => {
      :user_id => 4,
      :trail_id => 7,
      :year => 2018,
      :month => 5,
      :day => 31,
      :notes => "trail was busy"
    },
    "Summer Solstice Hike" => {
      :user_id => 4,
      :trail_id => 8,
      :year => 6,
      :month => 15,
      :day => 2010,
      :notes => "lovely hike"
    },
    "Winter Solstice Hike" => {
      :user_id => 5,
      :trail_id => 9,
      :year => 2020,
      :month => 12,
      :day => 15,
      :notes => "will be a great trip"
    },
    "Fall Foliage Hike" => {
      :user_id => 5,
      :trail_id => 10,
      :year => 2019,
      :month => 10,
      :day => 10,
      :notes => "looking forward to the colors"
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
