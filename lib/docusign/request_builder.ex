# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.RequestBuilder do
  @moduledoc """
  Helper functions for building Tesla requests
  """

  @doc """
  Specify the request method when building a request

  ## Parameters

  - request (Map) - Collected request options
  - m (atom) - Request method

  ## Returns

  Map
  """
  @spec method(map(), atom) :: map()
  def method(request, m) do
    Map.put_new(request, :method, m)
  end

  @doc """
  Specify the request method when building a request

  ## Parameters

  - request (Map) - Collected request options
  - u (String) - Request URL

  ## Returns

  Map
  """
  @spec url(map(), String.t()) :: map()
  def url(request, u) do
    Map.put_new(request, :url, "/restapi/#{u}")
  end

  @doc """
  Add optional parameters to the request

  ## Parameters

  - request (Map) - Collected request options
  - definitions (Map) - Map of parameter name to parameter location.
  - options (KeywordList) - The provided optional parameters

  ## Returns

  Map
  """
  @spec add_optional_params(map(), %{optional(atom) => atom}, keyword()) :: map()
  def add_optional_params(request, definitions, [{key, value}] = values) do
    case definitions do
      %{^key => :body} when map_size(definitions) == 1 ->
        # If there is a single entity to send in the body there is no need to
        # enclose it in a multipart request.
        add_param(request, :body, :body, Map.from_struct(value))

      _ ->
        do_add_optional_params(request, definitions, values)
    end
  end

  def add_optional_params(request, definitions, values) do
    do_add_optional_params(request, definitions, values)
  end

  defp do_add_optional_params(request, _, []), do: request

  defp do_add_optional_params(request, definitions, [{key, value} | tail]) do
    case definitions do
      %{^key => location} ->
        request
        |> add_param(location, key, value)
        |> do_add_optional_params(definitions, tail)

      _ ->
        do_add_optional_params(request, definitions, tail)
    end
  end

  @doc """
  Add optional parameters to the request

  ## Parameters

  - request (Map) - Collected request options
  - location (atom) - Where to put the parameter
  - key (atom) - The name of the parameter
  - value (any) - The value of the parameter

  ## Returns

  Map
  """
  @spec add_param(map(), atom, atom, any()) :: map()
  def add_param(request, :body, :body, value), do: Map.put(request, :body, value)

  def add_param(request, :body, key, value) do
    request
    |> Map.put_new_lazy(:body, &Tesla.Multipart.new/0)
    |> Map.update!(
      :body,
      &Tesla.Multipart.add_field(&1, key, Poison.encode!(value),
        headers: [{:"Content-Type", "application/json"}]
      )
    )
  end

  def add_param(request, :file, name, path) do
    request
    |> Map.put_new_lazy(:body, &Tesla.Multipart.new/0)
    |> Map.update!(:body, &Tesla.Multipart.add_file(&1, path, name: name))
  end

  def add_param(request, :form, name, value) do
    request
    |> Map.update(:body, %{name => value}, &Map.put(&1, name, value))
  end

  def add_param(request, location, key, value) do
    Map.update(request, location, [{key, value}], &(&1 ++ [{key, value}]))
  end

  # def decode(%OAuth2.Response{body: body, status_code: 200} = _response, struct) do
  #   struct(struct, DocuSign.Util.map_keys_to_atoms(body))
  # end

  # def decode(response, _struct), do: {:error, response}

  @doc """
  Handle the response for a Tesla request

  ## Parameters

  - arg1 (Tesla.Env.t | term) - The response object
  - arg2 (:false | struct | [struct]) - The shape of the struct to deserialize into

  ## Returns

  {:ok, struct} on success
  {:error, term} on failure
  """
  @spec decode(Tesla.Env.t() | term()) ::
          {:ok, struct()} | {:error, Tesla.Env.t()} | {:error, term()}
  def decode(%Tesla.Env{status: status, body: body}) when status in 200..299,
    do: Poison.decode(body)

  def decode(response), do: {:error, response}

  @spec decode(Tesla.Env.t() | term(), false | struct() | [struct()]) ::
          {:ok, struct()} | {:error, Tesla.Env.t()} | {:error, term()}
  def decode(%Tesla.Env{status: status} = env, false) when status in 200..299, do: {:ok, env}

  def decode(%Tesla.Env{status: status, body: body}, struct) when status in 200..299 do
    options = %{as: struct}

    value =
      body
      |> Poison.Parser.parse!(options)
      |> Poison.Decode.transform(options)

    {:ok, value}
  rescue
    exception in [Poison.ParseError, Poison.DecodeError] ->
      {:error, exception}
  end

  def decode(response, _struct), do: {:error, response}
end
