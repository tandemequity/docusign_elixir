# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.BillingInvoicesSummary do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :billingInvoices,
    :pastDueBalance,
    :paymentAllowed
  ]

  @type t :: %__MODULE__{
          :billingInvoices => [Invoices],
          :pastDueBalance => String.t(),
          :paymentAllowed => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BillingInvoicesSummary do
  import DocuSign.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:billingInvoices, :list, DocuSign.Model.Invoices, options)
  end
end
