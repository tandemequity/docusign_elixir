# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.MemberGroupSharedItem do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :errorDetails,
    :group,
    :shared
  ]

  @type t :: %__MODULE__{
          :errorDetails => ErrorDetails,
          :group => Group,
          :shared => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.MemberGroupSharedItem do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:group, :struct, DocuSign.Model.Group, options)
  end
end
