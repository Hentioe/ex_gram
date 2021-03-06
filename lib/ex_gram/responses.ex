defprotocol ExGram.Responses do
  # @fallback_to_any true
  def new(response, params)
  def execute(response)
  def set_msg(response, msg)
end

defimpl ExGram.Responses, for: Atom do
  def new(response, params), do: struct(response, params)
  def execute(_response), do: raise("Not implemented")
  def set_msg(_response, _msg), do: raise("Not implemented")
end

# defimpl ExGram.Responses, for: Any do
#   def new(response, params), do: struct(response, params)
#   def execute(_response), do: raise("Not implemented")
#   def set_msg(_response, _msg), do: raise("Not implemented")
# end
