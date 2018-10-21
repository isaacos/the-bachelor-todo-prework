require 'pry'


def get_first_name_of_season_winner(data, season)
  # code here
  winner = ''
  data.each do |season_num, season_info|
    if season_num.to_s == season
      season_info.each do |contestant_hash|

        contestant_hash.each do |contestant_keys, contestant_values|
          if data[season_num][0][contestant_keys] == 'Winner'
            winner = data[season_num][0]["name"]

          end
        end
      end


    end
  end
winner.split(' ')[0]
end


def get_contestant_name(data, occupation)
  # code here

  data.each do |season_num, season_info|

    season_info.each do |season_hash|


      if season_hash.has_value? (occupation)

        return  season_hash["name"]


      end

    end
  end

end


def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_num, season_info|

    season_info.each do |season_hash|


      if season_hash.has_value? (hometown)

        counter += 1


      end

    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here

  data.each do |season_num, season_info|

    season_info.each do |season_hash|


      if season_hash.has_value? (hometown)

        return  season_hash["occupation"]


      end

    end
  end

end

def get_average_age_for_season(data, season)
  # code here

  total_age = 0
  number_of_contestants = 0



  data.each do |season_num, season_info|
    if season_num.to_s == season
      season_info.each do |contestant_hash|

        contestant_hash.each do |contestant_keys, contestant_values|
          if contestant_keys == 'age'
            total_age += contestant_values.to_f
            number_of_contestants +=1


          end

        end
      end


    end
  end
  if (total_age / number_of_contestants.to_f).to_s.split('.')[-1][0].to_i >=5
    return (total_age / number_of_contestants.to_f).ceil
  else 
    return (total_age / number_of_contestants.to_f).to_i
  end

end
