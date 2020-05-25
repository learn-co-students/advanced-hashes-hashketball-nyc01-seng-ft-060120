

# Hashketball
# 052120
# Corey Lynch


#------------------------------------------------------------------------


require 'pry'


#------------------------------------------------------------------------


# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


#------------------------------------------------------------------------


def num_points_scored(player)
  points    = nil
  counter   = 0
  home_team = game_hash[:home][:players].length
  away_team = game_hash[:away][:players].length

  while counter < home_team do
    if game_hash[:home][:players][counter][:player_name] == player
      points = game_hash[:home][:players][counter][:points]
    end
    counter += 1
  end

  counter = 0

  while counter < home_team do
    if game_hash[:away][:players][counter][:player_name] == player
      points = game_hash[:away][:players][counter][:points]
    end
    counter += 1
  end
  points
end


#------------------------------------------------------------------------


def shoe_size(player)
  size    = nil
  counter   = 0
  home_team = game_hash[:home][:players].length
  away_team = game_hash[:away][:players].length

  while counter < home_team do
    if game_hash[:home][:players][counter][:player_name] == player
      size = game_hash[:home][:players][counter][:shoe]
    end
    counter += 1
  end

  counter = 0

  while counter < home_team do
    if game_hash[:away][:players][counter][:player_name] == player
      size = game_hash[:away][:players][counter][:shoe]
    end
    counter += 1
  end
  size
end


#------------------------------------------------------------------------


def team_colors(team)
  colors    = []
  counter   = 0
  home_team = game_hash[:home][:colors].length
  away_team = game_hash[:away][:colors].length

  while counter < home_team do
    if game_hash[:home][:team_name] == team
      colors.push(game_hash[:home][:colors][counter])
    end
    counter += 1
  end

  counter = 0

  while counter < away_team do
    if game_hash[:away][:team_name] == team
      colors.push(game_hash[:away][:colors][counter])
    end
    counter += 1
  end
  colors
end


#------------------------------------------------------------------------


def team_names()
  names = []

  names.push(game_hash[:home][:team_name])

  names.push(game_hash[:away][:team_name])

  names
end


#------------------------------------------------------------------------


def player_numbers(team)
  jersey_numbers = []
  counter   = 0
  home_team = game_hash[:home][:players].length
  away_team = game_hash[:away][:players].length

  while counter < home_team do
    if game_hash[:home][:team_name] == team
      jersey_numbers.push(game_hash[:home][:players][counter][:number])
    end
    counter += 1
  end

  counter = 0

  while counter < away_team do
    if game_hash[:away][:team_name] == team
      jersey_numbers.push(game_hash[:away][:players][counter][:number])
    end
    counter += 1
  end
  jersey_numbers = jersey_numbers.sort
end


#------------------------------------------------------------------------


def player_stats(player)
  stats = nil
  counter   = 0
  home_team = game_hash[:home][:players].length
  away_team = game_hash[:away][:players].length

  while counter < home_team do
    if game_hash[:home][:players][counter][:player_name] == player
      stats = game_hash[:home][:players][counter]
    end
    counter += 1
  end

  counter = 0

  while counter < home_team do
    if game_hash[:away][:players][counter][:player_name] == player
      stats = game_hash[:away][:players][counter]
    end
    counter += 1
  end
  stats
end


#------------------------------------------------------------------------


def big_shoe_rebounds()
  shoe_measure  = 0
  big_rebound = 0
  counter   = 0
  home_team = game_hash[:home][:players].length
  away_team = game_hash[:away][:players].length

  while counter < home_team do
    if game_hash[:home][:players][counter][:shoe] > shoe_measure
      shoe_measure = game_hash[:home][:players][counter][:shoe]
      big_rebound = game_hash[:home][:players][counter][:rebounds]
    end
    counter += 1
  end

  counter = 0

  while counter < away_team do
    if game_hash[:away][:players][counter][:shoe] > shoe_measure
      shoe_measure = game_hash[:away][:players][counter][:shoe]
      big_rebound = game_hash[:away][:players][counter][:rebounds]
    end
    counter += 1
  end
  big_rebound
end


#------------------------------------------------------------------------


# Which player has the most points? Call the method most_points_scored.

def most_points_scored()
  points_scored  = 0
  mvp = nil
  counter   = 0
  home_team = game_hash[:home][:players].length
  away_team = game_hash[:away][:players].length

  while counter < home_team do
    if game_hash[:home][:players][counter][:points] > points_scored
      points_scored = game_hash[:home][:players][counter][:points]
      mvp = game_hash[:home][:players][counter][:player_name]
    end
    counter += 1
  end

  counter = 0

  while counter < away_team do
    if game_hash[:away][:players][counter][:points] > points_scored
      points_scored = game_hash[:away][:players][counter][:points]
      mvp = game_hash[:away][:players][counter][:player_name]
    end
    counter += 1
  end
  mvp
  # binding.pry
end

# most_points_scored


#------------------------------------------------------------------------


# Which team has the most points? Call the method winning_team.

def winning_team()
  home_score  = 0
  away_score = 0
  counter   = 0
  home_team = game_hash[:home][:players].length
  away_team = game_hash[:away][:players].length

  while counter < home_team do
    if game_hash[:home][:players][counter][:points] > 0
      home_score = home_score + game_hash[:home][:players][counter][:points]
    end
    counter += 1
  end

  counter = 0

  while counter < away_team do
    if game_hash[:away][:players][counter][:points] > 0
      away_score = away_score + game_hash[:away][:players][counter][:points]
    end
    counter += 1
  end

  if home_score > away_score
     game_hash[:home][:team_name]
  else game_hash[:away][:team_name]

  end
  # binding.pry
end

# winning_team()


#------------------------------------------------------------------------


# Which player has the longest name? Call the method player_with_longest_name.

def player_with_longest_name()
  long_name  = 0
  player_with_name = nil
  counter   = 0
  home_team = game_hash[:home][:players].length
  away_team = game_hash[:away][:players].length

  while counter < home_team do
    if game_hash[:home][:players][counter][:player_name].length > long_name
      long_name = game_hash[:home][:players][counter][:player_name].length
      player_with_name = game_hash[:home][:players][counter][:player_name]
    end
    counter += 1
  end

  counter = 0

  while counter < away_team do
    if game_hash[:away][:players][counter][:player_name].length > long_name
      long_name = game_hash[:away][:players][counter][:player_name].length
      player_with_name = game_hash[:away][:players][counter][:player_name]
    end
    counter += 1
  end
  player_with_name
end


#------------------------------------------------------------------------


# Write a method that returns true if the player with the longest name had the most steals. Call the method long_name_steals_a_ton?.



#------------------------------------------------------------------------
























































#------------------------------------------------------------------------
