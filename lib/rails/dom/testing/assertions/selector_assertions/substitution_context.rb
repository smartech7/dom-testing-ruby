class SubstitutionContext
  def initialize
    @substitute = "?"
  end

  def substitute!(selector, values, format_for_presentation = false)
    selector.gsub @substitute do |match|
      next match[0] if values.empty? || !substitutable?(values.first)
      matcher_for(values.shift, format_for_presentation)
    end
  end

  def match(matches, attribute, matcher)
    matches.find_all { |node| node[attribute] =~ Regexp.new(matcher) }
  end

  private
    def matcher_for(value, format_for_presentation)
      # Nokogiri doesn't like arbitrary values without quotes, hence inspect.
      if format_for_presentation
        value.inspect # Avoid to_s so Regexps aren't put in quotes.
      else
        "\"#{value}\""
      end
    end

    def substitutable?(value)
      [ Symbol, Numeric, String, Regexp ].any? { |type| value.is_a? type }
    end
end
