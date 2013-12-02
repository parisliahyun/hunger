class Round < Event
   validates :game_id, :name, presence: true, uniqueness: true
    belongs_to :game
    has_and_belongs_to_many :tributes, :join_table => "rounds_games"
end