# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.Decline do
  @moduledoc """
  A tab that allows the recipient the option of declining an envelope. If the recipient clicks the tab during the signing process, the envelope is voided. 
  """

  @derive [Poison.Encoder]
  defstruct [
    :anchorCaseSensitive,
    :anchorHorizontalAlignment,
    :anchorIgnoreIfNotPresent,
    :anchorMatchWholeWord,
    :anchorString,
    :anchorUnits,
    :anchorXOffset,
    :anchorYOffset,
    :bold,
    :buttonText,
    :conditionalParentLabel,
    :conditionalParentValue,
    :customTabId,
    :declineReason,
    :documentId,
    :errorDetails,
    :font,
    :fontColor,
    :fontSize,
    :height,
    :italic,
    :mergeField,
    :pageNumber,
    :recipientId,
    :status,
    :tabId,
    :tabLabel,
    :tabOrder,
    :templateLocked,
    :templateRequired,
    :underline,
    :width,
    :xPosition,
    :yPosition
  ]

  @type t :: %__MODULE__{
    :anchorCaseSensitive => String.t,
    :anchorHorizontalAlignment => String.t,
    :anchorIgnoreIfNotPresent => String.t,
    :anchorMatchWholeWord => String.t,
    :anchorString => String.t,
    :anchorUnits => String.t,
    :anchorXOffset => String.t,
    :anchorYOffset => String.t,
    :bold => String.t,
    :buttonText => String.t,
    :conditionalParentLabel => String.t,
    :conditionalParentValue => String.t,
    :customTabId => String.t,
    :declineReason => String.t,
    :documentId => String.t,
    :errorDetails => ErrorDetails,
    :font => String.t,
    :fontColor => String.t,
    :fontSize => String.t,
    :height => integer(),
    :italic => String.t,
    :mergeField => MergeField,
    :pageNumber => String.t,
    :recipientId => String.t,
    :status => String.t,
    :tabId => String.t,
    :tabLabel => String.t,
    :tabOrder => String.t,
    :templateLocked => String.t,
    :templateRequired => String.t,
    :underline => String.t,
    :width => integer(),
    :xPosition => String.t,
    :yPosition => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.Decline do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:errorDetails, :struct, DocuSign.Model.ErrorDetails, options)
    |> deserialize(:mergeField, :struct, DocuSign.Model.MergeField, options)
  end
end
