# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.SignatureType do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :isDefault,
    :type
  ]

  @type t :: %__MODULE__{
    :isDefault => String.t,
    :type => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.SignatureType do
  def decode(value, _options) do
    value
  end
end
