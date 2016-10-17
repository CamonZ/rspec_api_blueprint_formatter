class PayloadSection < Section

  attr_reader :headers, :attributes, :body, :schema

  def initialize(object)
    @object = example
    @headers = Headers.new(object.ENV['headers'])
  end

  def build
    []
  end

  private


end
