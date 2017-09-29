class Jaro
  def initialize(s, t)
    @source, @target = s.length > t.length ? [t, s] : [s, t]
    @window = ([@source.length, @target.length].max / 2).floor - 1
  end

  def distance
    # Two characters from both strings respectively, are considered
    # matching only if they are the same and not farther than
    # (max(|s|, |t|) / 2)).floor - 1. By considering 'not farther than'
    # we mean difference in index positions between two characters.
    # Variable window refers to 'range' described above.
    # Variable match_in_window is self describing.
    window = @window

    # It's important to know that we always need to start iteration
    # from shorter to longer text. Those two are encountered during
    # initialization.
    shorter, longer = @source, @target
    shorter_length, longer_length = shorter.length, longer.length

    matches = []
    match = 0
    match_in_window = 0
    match_out_of_position = 0
end
