# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.CustomTabs do
  @moduledoc """
  Custom tabs
  """

  @derive [Poison.Encoder]
  defstruct [
    :anchor,
    :anchorCaseSensitive,
    :anchorHorizontalAlignment,
    :anchorIgnoreIfNotPresent,
    :anchorMatchWholeWord,
    :anchorUnits,
    :anchorXOffset,
    :anchorYOffset,
    :bold,
    :concealValueOnDocument,
    :createdByDisplayName,
    :createdByUserId,
    :customTabId,
    :disableAutoSize,
    :editable,
    :font,
    :fontColor,
    :fontSize,
    :height,
    :includedInEmail,
    :initialValue,
    :italic,
    :items,
    :lastModified,
    :lastModifiedByDisplayName,
    :lastModifiedByUserId,
    :locked,
    :maximumLength,
    :mergeField,
    :name,
    :paymentItemCode,
    :paymentItemDescription,
    :paymentItemName,
    :required,
    :scaleValue,
    :shared,
    :stampType,
    :stampTypeMetadata,
    :tabLabel,
    :type,
    :underline,
    :validationMessage,
    :validationPattern,
    :width
  ]

  @type t :: %__MODULE__{
    :anchor => String.t,
    :anchorCaseSensitive => String.t,
    :anchorHorizontalAlignment => String.t,
    :anchorIgnoreIfNotPresent => String.t,
    :anchorMatchWholeWord => String.t,
    :anchorUnits => String.t,
    :anchorXOffset => String.t,
    :anchorYOffset => String.t,
    :bold => String.t,
    :concealValueOnDocument => String.t,
    :createdByDisplayName => String.t,
    :createdByUserId => String.t,
    :customTabId => String.t,
    :disableAutoSize => String.t,
    :editable => String.t,
    :font => String.t,
    :fontColor => String.t,
    :fontSize => String.t,
    :height => String.t,
    :includedInEmail => String.t,
    :initialValue => String.t,
    :italic => String.t,
    :items => [String.t],
    :lastModified => String.t,
    :lastModifiedByDisplayName => String.t,
    :lastModifiedByUserId => String.t,
    :locked => String.t,
    :maximumLength => String.t,
    :mergeField => MergeField,
    :name => String.t,
    :paymentItemCode => String.t,
    :paymentItemDescription => String.t,
    :paymentItemName => String.t,
    :required => String.t,
    :scaleValue => String.t,
    :shared => String.t,
    :stampType => String.t,
    :stampTypeMetadata => PropertyMetadata,
    :tabLabel => String.t,
    :type => String.t,
    :underline => String.t,
    :validationMessage => String.t,
    :validationPattern => String.t,
    :width => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.CustomTabs do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:mergeField, :struct, DocuSign.Model.MergeField, options)
    |> deserialize(:stampTypeMetadata, :struct, DocuSign.Model.PropertyMetadata, options)
  end
end
