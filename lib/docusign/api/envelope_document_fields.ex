# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.EnvelopeDocumentFields do
  @moduledoc """
  API calls for all endpoints tagged `EnvelopeDocumentFields`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder


  @doc """
  Deletes custom document fields from an existing envelope document.
  Deletes custom document fields from an existing envelope document.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :envelope_document_fields (EnvelopeDocumentFields): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeDocumentFields{}} on success
  {:error, info} on failure
  """
  @spec document_fields_delete_document_fields(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeDocumentFields.t} | {:error, Tesla.Env.t}
  def document_fields_delete_document_fields(connection, account_id, document_id, envelope_id, opts \\ []) do
    optional_params = %{
      :"EnvelopeDocumentFields" => :body
    }
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/documents/#{document_id}/fields")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeDocumentFields{})
  end

  @doc """
  Gets the custom document fields from an  existing envelope document.
  Retrieves the custom document field information from an existing envelope document.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeDocumentFields{}} on success
  {:error, info} on failure
  """
  @spec document_fields_get_document_fields(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeDocumentFields.t} | {:error, Tesla.Env.t}
  def document_fields_get_document_fields(connection, account_id, document_id, envelope_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/documents/#{document_id}/fields")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeDocumentFields{})
  end

  @doc """
  Creates custom document fields in an existing envelope document.
  Creates custom document fields in an existing envelope document.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :envelope_document_fields (EnvelopeDocumentFields): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeDocumentFields{}} on success
  {:error, info} on failure
  """
  @spec document_fields_post_document_fields(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeDocumentFields.t} | {:error, Tesla.Env.t}
  def document_fields_post_document_fields(connection, account_id, document_id, envelope_id, opts \\ []) do
    optional_params = %{
      :"EnvelopeDocumentFields" => :body
    }
    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/documents/#{document_id}/fields")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeDocumentFields{})
  end

  @doc """
  Updates existing custom document fields in an existing envelope document.
  Updates existing custom document fields in an existing envelope document.

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - document_id (String.t): The ID of the document being accessed.
  - envelope_id (String.t): The envelope&#39;s GUID. Eg 93be49ab-afa0-4adf-933c-f752070d71ec 
  - opts (KeywordList): [optional] Optional parameters
    - :envelope_document_fields (EnvelopeDocumentFields): 

  ## Returns

  {:ok, %DocuSign.Model.EnvelopeDocumentFields{}} on success
  {:error, info} on failure
  """
  @spec document_fields_put_document_fields(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.EnvelopeDocumentFields.t} | {:error, Tesla.Env.t}
  def document_fields_put_document_fields(connection, account_id, document_id, envelope_id, opts \\ []) do
    optional_params = %{
      :"EnvelopeDocumentFields" => :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/envelopes/#{envelope_id}/documents/#{document_id}/fields")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.EnvelopeDocumentFields{})
  end
end
