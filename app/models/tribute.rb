class Tribute < Person
  validates :game_id, presence: true
  # validates :score, inclusion: 1..10, allow_nil: true

  belongs_to :game
  belongs_to :escort, :foreign_key => :district_id, :primary_key => :foreign_key
  # has_and_belongs_to_many :sponsors, :join_table => "sponsors_tributes"
  has_and_belongs_to_many :rounds, :join_table => "rounds_games"
end