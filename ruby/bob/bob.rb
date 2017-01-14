class Bob

  MATCHES_RESPONSES = {
      Proc.new {|phrase| phrase.match(/[A-Z]/) && !phrase.match(/[a-z]/)} => 'Whoa, chill out!',
      Proc.new {|phrase| phrase.match(/\?$/)} => 'Sure.',
      Proc.new {|phrase| phrase.match(/^\s*$/)} => 'Fine. Be that way!',
      Proc.new {|phrase| phrase.match(/.*/)} => 'Whatever.'
  }

  def self.hey(phrase)
    phrase = phrase.lines.last || ''
    MATCHES_RESPONSES.find {|k, v| k.call(phrase)}[1]
  end
end
