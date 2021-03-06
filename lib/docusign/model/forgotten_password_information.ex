# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.ForgottenPasswordInformation do
  @moduledoc """
  A complex element that has up to four Question/Answer pairs for forgotten password information.
  """

  @derive [Poison.Encoder]
  defstruct [
    :forgottenPasswordAnswer1,
    :forgottenPasswordAnswer2,
    :forgottenPasswordAnswer3,
    :forgottenPasswordAnswer4,
    :forgottenPasswordQuestion1,
    :forgottenPasswordQuestion2,
    :forgottenPasswordQuestion3,
    :forgottenPasswordQuestion4
  ]

  @type t :: %__MODULE__{
          :forgottenPasswordAnswer1 => String.t(),
          :forgottenPasswordAnswer2 => String.t(),
          :forgottenPasswordAnswer3 => String.t(),
          :forgottenPasswordAnswer4 => String.t(),
          :forgottenPasswordQuestion1 => String.t(),
          :forgottenPasswordQuestion2 => String.t(),
          :forgottenPasswordQuestion3 => String.t(),
          :forgottenPasswordQuestion4 => String.t()
        }
end

defimpl Poison.Decoder, for: DocuSign.Model.ForgottenPasswordInformation do
  def decode(value, _options) do
    value
  end
end
