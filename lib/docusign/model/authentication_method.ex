# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.AuthenticationMethod do
  @moduledoc """
  Contains information about the method used for authentication.
  """

  @derive [Poison.Encoder]
  defstruct [
    :authenticationType,
    :lastProvider,
    :lastTimestamp,
    :totalCount
  ]

  @type t :: %__MODULE__{
    :authenticationType => String.t,
    :lastProvider => String.t,
    :lastTimestamp => String.t,
    :totalCount => integer()
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.AuthenticationMethod do
  def decode(value, _options) do
    value
  end
end