# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.BulkRecipientTabLabel do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :value
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :value => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.BulkRecipientTabLabel do
  def decode(value, _options) do
    value
  end
end
