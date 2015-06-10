require 'pry'
class SuperHero
  attr_reader :public_identity

  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

  private
  attr_reader :secret_identity
end

class Speedster < SuperHero
  def speed_in_mph
    ("#{super}").to_i * 1000
  end
  def backstory
    "Meep Meep!"
  end
  def powers
    "No weapon formed by ACME can hurt this person"
  end
  def weakness
    "Speed bumps"
  end
end

class Brawler < SuperHero
  def health
    ("#{super}").to_i * 20
  end
  def backstory
    "Baby got backstory"
  end
  def powers
    "Phone always autocorrects to the right word"
  end
  def weakness
    "Lorna Doone cookies"
  end
end

class Detective < SuperHero
  def weakness
    @secret_identity
  end
  def speed_in_mph
    ("#{super}").to_i / 6
  end
  def backstory
    "Detective Jarvis was as Bucknutty as he wanted to be
    and that's the long and short of it"
  end
  def powers
    "Randomly blurts out tidbits of misdirection"
  end
end

class Demigod < SuperHero
  def home
    "Cosmic Plane"
  end
  def backstory
    "Some convoluted story about how green crystals make him sad"
  end
  def weakness
    "Has a weird problem with his achilies"
  end
  def powers
    "His dad is Zeus... That's pretty cool right?"
  end
end

class JackOfAllTrades < SuperHero
  def species
    "Alien"
  end
  def home
    "Venus"
  end
  def backstory
    "Master of None"
  end
  def powers
    "Super awesome at blackjack"
  end
  def weakness
    "Queen of Hearts"
  end
  def psychic?
    true
  end
end

class WaterBased < SuperHero
  def fans_per_thousand
    ("#{super}").to_i / 100
  end
  def home
    "Earth's Oceans"
  end
  def backstory
    "Mama says alligators are ornery because they got all them
    teeth and no toothbrush"
  end
  def powers
    "Delivers high quality H20"
  end
  def weakness
    "Gatoraaaaddeee"
  end
  def psychic?
    true
  end
end
