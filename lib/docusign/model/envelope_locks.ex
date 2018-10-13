# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.EnvelopeLocks do
  @moduledoc """
  Envelope locks
  """

  @derive [Poison.Encoder]
  defstruct [
    :errorDetails,
    :lockDurationInSeconds,
    :lockedByApp,
    :lockedByUser,
    :lockedUntilDateTime,
    :lockToken,
    :lockType,
    :useScratchPad
  ]

  @type t :: %__MODULE__{
    :errorDetails => ErrorDetails,
    :lockDurationInSeconds => String.t,
    :lockedByApp => String.t,
    :lockedByUser => UserInfo,
    :lockedUntilDateTime => String.t,
    :lockToken => String.t,
    :lockType => String.t,
    :useScratchPad => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopeLocks do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:lockedByUser, :struct, DocuSign.Model.UserInfo, options)
  end
end
