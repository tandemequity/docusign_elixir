# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.Resources do
  @moduledoc """
  API calls for all endpoints tagged `Resources`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder


  @doc """
  Lists resources for REST version specified
  Retrieves the base resources available for the DocuSign REST APIs.  You do not need an integrator key to view the REST API versions and resources.  Example: https://demo.docusign.net/restapi/v2 lists all of the base resources available in version 2 of the REST API on the DocuSign Demo system.  To view descriptions and samples of the service operations for all versions, remove the version number and add /help to the URL.  Example: https://demo.docusign.net/restapi/help lists the REST API operations on the DocuSign Demo system with XML and JSON request and response samples.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.Resources{}} on success
  {:error, info} on failure
  """
  @spec service_information_get_resource_information(Tesla.Env.client, keyword()) :: {:ok, DocuSign.Model.Resources.t} | {:error, Tesla.Env.t}
  def service_information_get_resource_information(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.Resources{})
  end
end
