# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.EnvelopeTemplateResults do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :endPosition,
    :envelopeTemplates,
    :folders,
    :nextUri,
    :previousUri,
    :resultSetSize,
    :startPosition,
    :totalSetSize
  ]

  @type t :: %__MODULE__{
          :endPosition => String.t(),
          :envelopeTemplates => [EnvelopeTemplateResult],
          :folders => [Folder],
          :nextUri => String.t(),
          :previousUri => String.t(),
          :resultSetSize => String.t(),
          :startPosition => String.t(),
          :totalSetSize => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.EnvelopeTemplateResults do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:envelopeTemplates, :list, DocuSign.Model.EnvelopeTemplateResult, options)
    |> deserialize(:folders, :list, DocuSign.Model.Folder, options)
  end
end
