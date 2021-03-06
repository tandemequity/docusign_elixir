# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.TemplateDocumentTabs do
  @moduledoc """
  API calls for all endpoints tagged `TemplateDocumentTabs`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Returns tabs on the document.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters
    - :page_numbers (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.TemplateDocumentTabs{}} on success
  {:error, info} on failure
  """
  @spec tabs_get_template_document_tabs(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.TemplateDocumentTabs.t()} | {:error, Tesla.Env.t()}
  def tabs_get_template_document_tabs(
        connection,
        account_id,
        document_id,
        template_id,
        opts \\ []
      ) do
    optional_params = %{
      page_numbers: :query
    }

    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/templates/#{template_id}/documents/#{document_id}/tabs")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TemplateDocumentTabs{})
  end

  @doc """
  Returns tabs on the specified page.


  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - page_number (String.t): The page number being accessed.
  - template_id (String.t): The ID of the template being accessed.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.TemplateDocumentTabs{}} on success
  {:error, info} on failure
  """
  @spec tabs_get_template_page_tabs(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) :: {:ok, DocuSign.Model.TemplateDocumentTabs.t()} | {:error, Tesla.Env.t()}
  def tabs_get_template_page_tabs(
        connection,
        account_id,
        document_id,
        page_number,
        template_id,
        _opts \\ []
      ) do
    %{}
    |> method(:get)
    |> url(
      "/v2/accounts/#{account_id}/templates/#{template_id}/documents/#{document_id}/pages/#{
        page_number
      }/tabs"
    )
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.TemplateDocumentTabs{})
  end
end
