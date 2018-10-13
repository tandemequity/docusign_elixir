# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.GroupUsers do
  @moduledoc """
  API calls for all endpoints tagged `GroupUsers`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder


  @doc """
  Deletes one or more users from a gro
  Deletes one or more users from a group. 

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - group_id (String.t): The ID of the group being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :user_info_list (UserInfoList): 

  ## Returns

  {:ok, %DocuSign.Model.GroupUsers{}} on success
  {:error, info} on failure
  """
  @spec groups_delete_group_users(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.GroupUsers.t} | {:error, Tesla.Env.t}
  def groups_delete_group_users(connection, account_id, group_id, opts \\ []) do
    optional_params = %{
      :"userInfoList" => :body
    }
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/groups/#{group_id}/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.GroupUsers{})
  end

  @doc """
  Gets a list of users in a group.
  Retrieves a list of users in a group.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - group_id (String.t): The ID of the group being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :count (String.t): Number of records to return. The number must be greater than 1 and less than or equal to 100. 
    - :start_position (String.t): Starting value for the list.

  ## Returns

  {:ok, %DocuSign.Model.GroupUsers{}} on success
  {:error, info} on failure
  """
  @spec groups_get_group_users(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.GroupUsers.t} | {:error, Tesla.Env.t}
  def groups_get_group_users(connection, account_id, group_id, opts \\ []) do
    optional_params = %{
      :"count" => :query,
      :"start_position" => :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/groups/#{group_id}/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.GroupUsers{})
  end

  @doc """
  Adds one or more users to an existing group.
  Adds one or more users to an existing group.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - group_id (String.t): The ID of the group being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :user_info_list (UserInfoList): 

  ## Returns

  {:ok, %DocuSign.Model.GroupUsers{}} on success
  {:error, info} on failure
  """
  @spec groups_put_group_users(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.GroupUsers.t} | {:error, Tesla.Env.t}
  def groups_put_group_users(connection, account_id, group_id, opts \\ []) do
    optional_params = %{
      :"userInfoList" => :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/groups/#{group_id}/users")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.GroupUsers{})
  end
end
