module Nmax
  autoload :VERSION, 'nmax/version'

  DIGIT_FORMAT = /\d+/i

  def self.parse(limit, stdin = $stdin.read)
    results = []

    stdin.each_line do |line|
      line.scan(DIGIT_FORMAT) { |digit| results << digit.to_i }
    end

    results = results.uniq.max(limit)
  end

  private

  def self.display_results(results)
    results.each { |num| puts num }
  end
end
