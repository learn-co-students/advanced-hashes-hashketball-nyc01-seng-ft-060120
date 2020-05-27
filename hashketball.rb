# Write your code below game_hash
require 'pry'
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

# require './hashketball.rb' -- in IRB 
# Write code here
def num_points_scored(player)
  game_hash.each do |team, team_info|
    team_info[:players].each do |name| 
      if name[:player_name] == player
     return name[:points]
    end 
   end 
  end 
end 

def shoe_size(player)
   game_hash.each do |team, team_info|
    team_info[:players].each do |name| 
      if name[:player_name] == player
      return name[:shoe]
    end
   end 
  end 
end 

def team_colors(team_name)
  if game_hash[:home][:team_name] == team_name
    return game_hash[:home][:colors]
  elsif game_hash[:away][:team_name] == team_name
    return game_hash[:away][:colors]
  end 
end 

def team_names
  teams = []
  teams.push(
    game_hash[:home][:team_name], 
    game_hash[:away][:team_name]
  )
  p teams 
end 

def player_numbers(team_name)
    jersey_numbers = []
    game_hash.each do |team, team_info|
      if team_info[:team_name] == team_name
        team_info.each do |key, value|
          if key == :players
            value.each do |jersey|
          jersey_numbers.push(jersey[:number])
            end 
          end 
        end 
      end
    end 
  return jersey_numbers
end 

def player_stats(name)
  game_hash.each do |team, team_info|
    team_info.each do |key, value|
      if key == :players 
        value.each do |stats|
          if name == stats[:player_name]
          return stats
          end 
        end 
      end 
    end 
  end
end 

def big_shoe_rebounds
  big_shoe = 0 
  rebound = 0 
  game_hash.each do |team, team_info| 
    team_info[:players].each do |info|
      while big_shoe < info[:shoe] do
        big_shoe = info[:shoe] 
        rebound = info[:rebounds]
      end
    end 
  end 
  return rebound
end   

  