case Finch.start_link(name: PolarExpress.Finch) do
  {:ok, _pid} -> :ok
  {:error, {:already_started, _pid}} -> :ok
end

PolarExpress.Test.start()
ExUnit.start(exclude: [:integration])
