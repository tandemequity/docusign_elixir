# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.BrandEmailContent do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :content,
    :emailContentType,
    :emailToLink,
    :linkText
  ]

  @type t :: %__MODULE__{
    :content => String.t,
    :emailContentType => String.t,
    :emailToLink => String.t,
    :linkText => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.BrandEmailContent do
  def decode(value, _options) do
    value
  end
end
