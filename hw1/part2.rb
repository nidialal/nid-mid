class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  if(m1[1].upcase=='P')
	  if(m2[1].upcase=='R')
	   return m1
	  elsif(m2[1].upcase=='S')
	   return  m2
	  else
	   return m1
	  end
	elsif(m1[1].upcase=='R')
	  if(m2[1].upcase=='S')
	   return m1
	  elsif(m2[1].upcase=='P')
	   return  m2
	  else
	   return m1
	  end
	else
	  if(m2[1].upcase=='P')
	   return m1
	  elsif(m2[1].upcase=='R')
	   return  m2
	  else
	   return m1
	  end
	end
end

def rps_game_winner(game)
 valid_strategies = ['R','P','S']
 raise WrongNumberOfPlayersError unless game.length == 2
 
 raise NoSuchStrategyError unless valid_strategies.include? game[0][1].upcase
 raise NoSuchStrategyError unless valid_strategies.include? game[1][1].upcase
 rps_result(game[0],game[1])
end

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a? String
    return rps_game_winner(tournament)
  end
  return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
end
