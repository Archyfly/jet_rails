module MatchesHelper

  def last_five_matches
    @last_five_matches = Match.limit(5).order('created_at desc')
  end
end
