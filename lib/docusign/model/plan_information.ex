# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.PlanInformation do
  @moduledoc """
  An object used to identify the features and attributes of the account being created.
  """

  @derive [Poison.Encoder]
  defstruct [
    :addOns,
    :currencyCode,
    :freeTrialDaysOverride,
    :planFeatureSets,
    :planId,
    :recipientDomains
  ]

  @type t :: %__MODULE__{
    :addOns => [AddOn],
    :currencyCode => String.t,
    :freeTrialDaysOverride => String.t,
    :planFeatureSets => [FeatureSet],
    :planId => String.t,
    :recipientDomains => [RecipientDomain]
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.PlanInformation do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:addOns, :list, DocuSign.Model.AddOn, options)
    |> deserialize(:planFeatureSets, :list, DocuSign.Model.FeatureSet, options)
    |> deserialize(:recipientDomains, :list, DocuSign.Model.RecipientDomain, options)
  end
end
