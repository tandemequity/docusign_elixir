# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.AccountPermissionProfiles do
  @moduledoc """
  API calls for all endpoints tagged `AccountPermissionProfiles`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder


  @doc """
  Deletes a permissions profile within the specified account.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - permission_profile_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec permission_profiles_delete_permission_profiles(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def permission_profiles_delete_permission_profiles(connection, account_id, permission_profile_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/permission_profiles/#{permission_profile_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Returns a permissions profile in the specified account.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - permission_profile_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :include (String.t): A comma-separated list of additional template attributes to include in the response. Valid values are: recipients, folders, documents, custom_fields, and notifications.

  ## Returns

  {:ok, %DocuSign.Model.AccountPermissionProfiles{}} on success
  {:error, info} on failure
  """
  @spec permission_profiles_get_permission_profile(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.AccountPermissionProfiles.t} | {:error, Tesla.Env.t}
  def permission_profiles_get_permission_profile(connection, account_id, permission_profile_id, opts \\ []) do
    optional_params = %{
      :"include" => :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/permission_profiles/#{permission_profile_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.AccountPermissionProfiles{})
  end

  @doc """
  Gets a list of permission profiles.
  Retrieves a list of Permission Profiles. Permission Profiles are a standard set of user permissions that you can apply to individual users or users in a Group. This makes it easier to manage user permissions for a large number of users, without having to change permissions on a user-by-user basis.  Currently, Permission Profiles can only be created and modified in the DocuSign console.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :include (String.t): Reserved for DocuSign. 

  ## Returns

  {:ok, %DocuSign.Model.PermissionProfileInformation{}} on success
  {:error, info} on failure
  """
  @spec permission_profiles_get_permission_profiles(Tesla.Env.client, String.t, keyword()) :: {:ok, DocuSign.Model.PermissionProfileInformation.t} | {:error, Tesla.Env.t}
  def permission_profiles_get_permission_profiles(connection, account_id, opts \\ []) do
    optional_params = %{
      :"include" => :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/permission_profiles")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.PermissionProfileInformation{})
  end

  @doc """
  Creates a new permission profile in the specified account.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :include (String.t): A comma-separated list of additional template attributes to include in the response. Valid values are: recipients, folders, documents, custom_fields, and notifications.
    - :account_permission_profiles (AccountPermissionProfiles): 

  ## Returns

  {:ok, %DocuSign.Model.AccountPermissionProfiles{}} on success
  {:error, info} on failure
  """
  @spec permission_profiles_post_permission_profiles(Tesla.Env.client, String.t, keyword()) :: {:ok, DocuSign.Model.AccountPermissionProfiles.t} | {:error, Tesla.Env.t}
  def permission_profiles_post_permission_profiles(connection, account_id, opts \\ []) do
    optional_params = %{
      :"include" => :query,
      :"AccountPermissionProfiles" => :body
    }
    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/permission_profiles")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.AccountPermissionProfiles{})
  end

  @doc """
  Updates a permission profile within the specified account.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - permission_profile_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :include (String.t): A comma-separated list of additional template attributes to include in the response. Valid values are: recipients, folders, documents, custom_fields, and notifications.
    - :account_permission_profiles (AccountPermissionProfiles): 

  ## Returns

  {:ok, %DocuSign.Model.AccountPermissionProfiles{}} on success
  {:error, info} on failure
  """
  @spec permission_profiles_put_permission_profiles(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.AccountPermissionProfiles.t} | {:error, Tesla.Env.t}
  def permission_profiles_put_permission_profiles(connection, account_id, permission_profile_id, opts \\ []) do
    optional_params = %{
      :"include" => :query,
      :"AccountPermissionProfiles" => :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/permission_profiles/#{permission_profile_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.AccountPermissionProfiles{})
  end
end
