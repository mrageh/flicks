module Rankable
  def thumbs_up
    self.rank += 1
  end

  def thumbs_down
    self.rank -= 1
  end

  def hit?
    if self.rank >= 10
      true
    else
      false
    end
  end

  def status
    hit? ? "Hit" : "Flop"
  end

  def <=> (other)
    other.rank <=> self.rank
  end

  def normalised_rank
    self.rank / 10
  end
end
