# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.AccountPasswordStrengthTypeOption do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :minimumLength,
    :name,
    :passwordIncludeDigit,
    :passwordIncludeDigitOrSpecialCharacter,
    :passwordIncludeLowerCase,
    :passwordIncludeSpecialCharacter,
    :passwordIncludeUpperCase
  ]

  @type t :: %__MODULE__{
    :minimumLength => String.t,
    :name => String.t,
    :passwordIncludeDigit => String.t,
    :passwordIncludeDigitOrSpecialCharacter => String.t,
    :passwordIncludeLowerCase => String.t,
    :passwordIncludeSpecialCharacter => String.t,
    :passwordIncludeUpperCase => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.AccountPasswordStrengthTypeOption do
  def decode(value, _options) do
    value
  end
end
