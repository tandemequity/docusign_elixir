# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeEmailSettings do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeEmailSettings`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder


  @doc """
  Deletes the email setting overrides for an envelope.
  Deletes all existing email override settings for the envelope. If you want to delete an individual email override setting, use the PUT and set the value to an empty string. Note that deleting email settings will only affect email communications that occur after the deletion and the normal account email settings are used for future email communications.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeEmailSettings{}} on success
  {:error, info} on failure
  """
  @spec email_settings_delete_email_settings(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeEmailSettings.t} | {:error, Tesla.Env.t}
  def email_settings_delete_email_settings(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/email_settings")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeEmailSettings{})
  end

  @doc """
  Gets the email setting overrides for an envelope.
  Retrieves the email override settings for the specified envelope.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeEmailSettings{}} on success
  {:error, info} on failure
  """
  @spec email_settings_get_email_settings(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeEmailSettings.t} | {:error, Tesla.Env.t}
  def email_settings_get_email_settings(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/email_settings")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeEmailSettings{})
  end

  @doc """
  Adds email setting overrides to an envelope.
  Adds email override settings, changing the email address to reply to an email address, name, or the BCC for email archive information, for the envelope. Note that adding email settings will only affect email communications that occur after the addition was made.  ### Important: The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, use a Carbon Copies or Certified Deliveries Recipient Type.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :envelope_email_settings (EnvelopeEmailSettings): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeEmailSettings{}} on success
  {:error, info} on failure
  """
  @spec email_settings_post_email_settings(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeEmailSettings.t} | {:error, Tesla.Env.t}
  def email_settings_post_email_settings(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      :"EnvelopeEmailSettings" => :body
    }
    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/email_settings")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeEmailSettings{})
  end

  @doc """
  Updates the email setting overrides for an envelope.
  Updates the existing email override settings for the specified envelope. Note that modifying email settings will only affect email communications that occur after the modification was made.  This can also be used to delete an individual email override setting by using an empty string for the value to be deleted.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :envelope_email_settings (EnvelopeEmailSettings): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeEmailSettings{}} on success
  {:error, info} on failure
  """
  @spec email_settings_put_email_settings(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeEmailSettings.t} | {:error, Tesla.Env.t}
  def email_settings_put_email_settings(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      :"EnvelopeEmailSettings" => :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/email_settings")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeEmailSettings{})
  end
end
