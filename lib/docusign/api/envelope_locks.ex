# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeLocks do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeLocks`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder


  @doc """
  Deletes an envelope lock.
  Deletes the lock from the specified envelope. The &#x60;X-DocuSign-Edit&#x60; header must be included in the request.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeLocks{}} on success
  {:error, info} on failure
  """
  @spec lock_delete_envelope_lock(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeLocks.t} | {:error, Tesla.Env.t}
  def lock_delete_envelope_lock(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/lock")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeLocks{})
  end

  @doc """
  Gets envelope lock information.
  Retrieves general information about the envelope lock.  If the call is made by the locked by user and the request has the same integrator key as original, then the &#x60;X-DocuSign-Edit&#x60; header and additional lock information is included in the response. This allows users to recover a lost editing session token and the &#x60;X-DocuSign-Edit&#x60; header.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeLocks{}} on success
  {:error, info} on failure
  """
  @spec lock_get_envelope_lock(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeLocks.t} | {:error, Tesla.Env.t}
  def lock_get_envelope_lock(connection, account_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/lock")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeLocks{})
  end

  @doc """
  Lock an envelope.
  Locks the specified envelope, and sets the time until the lock expires, to prevent other users or recipients from accessing and changing the envelope.  ###### Note: Users must have envelope locking capability enabled to use this function (userSetting &#x60;canLockEnvelopes&#x60; must be  set to true for the user).

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :lock_request (LockRequest): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeLocks{}} on success
  {:error, info} on failure
  """
  @spec lock_post_envelope_lock(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeLocks.t} | {:error, Tesla.Env.t}
  def lock_post_envelope_lock(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      :"lockRequest" => :body
    }
    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/lock")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeLocks{})
  end

  @doc """
  Updates an envelope lock.
  Updates the lock duration time or update the &#x60;lockedByApp&#x60; property information for the specified envelope. The user and integrator key must match the user specified by the &#x60;lockByUser&#x60; property and integrator key information and the &#x60;X-DocuSign-Edit&#x60; header must be included or an error will be generated.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :lock_request (LockRequest): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeLocks{}} on success
  {:error, info} on failure
  """
  @spec lock_put_envelope_lock(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeLocks.t} | {:error, Tesla.Env.t}
  def lock_put_envelope_lock(connection, account_id, envelope_id, opts \\ []) do
    optional_params = %{
      :"lockRequest" => :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/lock")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeLocks{})
  end
end
