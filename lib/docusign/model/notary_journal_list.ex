# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.NotaryJournalList do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :endPosition,
    :nextUri,
    :notaryJournals,
    :previousUri,
    :resultSetSize,
    :startPosition,
    :totalSetSize
  ]

  @type t :: %__MODULE__{
    :endPosition => String.t,
    :nextUri => String.t,
    :notaryJournals => [NotaryJournals],
    :previousUri => String.t,
    :resultSetSize => String.t,
    :startPosition => String.t,
    :totalSetSize => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.NotaryJournalList do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:notaryJournals, :list, DocuSign.Model.NotaryJournals, options)
  end
end