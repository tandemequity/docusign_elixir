# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.SigningGroupInformation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :groups
  ]

  @type t :: %__MODULE__{
    :groups => [SigningGroups]
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.SigningGroupInformation do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:groups, :list, DocuSign.Model.SigningGroups, options)
  end
end
