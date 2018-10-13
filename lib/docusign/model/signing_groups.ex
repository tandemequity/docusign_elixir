# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.SigningGroups do
  @moduledoc """
  Signing groups
  """

  @derive [Poison.Encoder]
  defstruct [
    :created,
    :createdBy,
    :errorDetails,
    :groupEmail,
    :groupName,
    :groupType,
    :modified,
    :modifiedBy,
    :signingGroupId,
    :users
  ]

  @type t :: %__MODULE__{
    :created => String.t,
    :createdBy => String.t,
    :errorDetails => ErrorDetails,
    :groupEmail => String.t,
    :groupName => String.t,
    :groupType => String.t,
    :modified => String.t,
    :modifiedBy => String.t,
    :signingGroupId => String.t,
    :users => [SigningGroupUser]
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.SigningGroups do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:users, :list, DocuSign.Model.SigningGroupUser, options)
  end
end
