class Headers < Section
  def init(received_headers)
    @headers = received_headers
  end

  def build
    [identifier, "\n", header_values].flatten
  end

  private

  attr_reader :base_indent

  def identifier
    '+ Headers'.freeze
  end

  def header_values
    API_HEADERS.each_with_object([]) { |key, accum| accum[key] = @headers[key]}.map { |str| indent(str, 8) }
  end

  API_HEADERS = ['Accepts', 'Authorization']
end
