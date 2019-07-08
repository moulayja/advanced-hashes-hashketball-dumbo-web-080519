def game_hash
{
  home: {
    team_name: 'Brooklyn Nets', # string
    colors:   ['Black, White'], # array of strings
    players: { #hash of players. name = key to a hash of their stats
      'Alan Anderson' => {
        number: 0,
        shoe: 16,
        points: 22,
        rebounds: 12,
        assists: 12,
        steals: 3,
        blocks: 1,
        slam_dunks: 1
      },
      'Reggie Evans' => {
        number: 30,
        shoe: 14,
        points: 12,
        rebounds: 12,
        assists: 12,
        steals: 12,
        blocks: 12,
        slam_dunks: 7
      },
      'Brook Lopez' => {
        number: 11,
        shoe: 17,
        points: 17,
        rebounds: 19,
        assists: 10,
        steals: 3,
        blocks: 1,
        slam_dunks: 15
      },
      'Mason Plumlee' => {
        number: 1,
        shoe: 19,
        points: 26,
        rebounds: 12,
        assists: 6,
        steals: 3,
        blocks: 8,
        slam_dunks: 5
      },
      'Jason Terry' => {
        number: 31,
        shoe: 15,
        points: 19,
        rebounds: 2,
        assists: 2,
        steals: 4,
        blocks: 11,
        slam_dunks: 1
      }
    }
  },
  away: {
    team_name: 'Charlotte Hornets',
    colors: ['Turquoise', 'Purple'],
    players: {
      'Jeff Adrien' => {
        number: 4,
        shoe: 18,
        points: 10,
        rebounds: 1,
        assists: 1,
        steals: 2,
        blocks: 7,
        slam_dunks: 2
      },
      'Bismak Biyombo' => {
        number: 0,
        shoe: 16,
        points: 12,
        rebounds: 4,
        assists: 7,
        steals: 7,
        blocks: 15,
        slam_dunks: 10
      },
      'DeSagna Diop' => {
        number: 2,
        shoe: 14,
        points: 24,
        rebounds: 12,
        assists: 12,
        steals: 4,
        blocks: 5,
        slam_dunks: 5
      },
      'Ben Gordon' => {
        number: 8,
        shoe: 15,
        points: 33,
        rebounds: 3,
        assists: 2,
        steals: 1,
        blocks: 1,
        slam_dunks: 0
      },
      'Brendan Haywood' => {
        number: 33,
        shoe: 15,
        points: 6,
        rebounds: 12,
        assists: 12,
        steals: 22,
        blocks: 5,
        slam_dunks: 12
      }
    }
  }
}
end

def winning_team
  arr_scores = game_hash.map { |location, team_data|
    score = (team_data[:players].map { |name, player_data|
      player_data[:points]}.reduce(:+))
  }
  puts arr_scores.max
end

winning_team

def player_stats(players_name)
  result = []
  game_hash.each do |location, team_data|
    team_data[:players].each do |name, player_attributes|
      if name == players_name
        return player_attributes
      end
    end
  end
  # result
end

# puts player_stats('Mason Plumlee')

def player_numbers(teams_name)
  result = []
  game_hash.map do |location, team_data|
    if team_data[:team_name] == teams_name
      team_data[:players].each do |player_name, player_data|
        result << player_data[:number]
      end
    end
  end
  result
end

# puts player_numbers('Charlotte Hornets').sort

def team_names
  game_hash.map do |location, team_data|
    puts team_data[:team_name]
  end
end

# team_names

def team_colors(team_name)
  game_hash.each do |location, team_data|
    team_data.each do |team_property, team_property_value|
      puts team_property[:team_name]
      puts team_property[:colors] if team_property[:team_name.to_s] == team_name
    end
  end
end

# team_colors('Charlotte Hornets')

def shoe_size(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |team_properties, team_properties_values|
      if team_properties == :players
        # puts 'player'
        team_properties_values.each do |name, properties|
          # puts properties
          puts properties
        end
      end
    end
  end
end

# shoe_size('Brendan Haywood')

def num_points_scored(player_name)
  game_hash.each do |location, team_data|
    team_data.each do |attribute, attribute_data|
      if attribute == :players
        attribute_data.each do |name, property|
          puts property[:points] if name == player_name
       end 
      end
    end
  end
end