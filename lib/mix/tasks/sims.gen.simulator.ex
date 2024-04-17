defmodule Mix.Tasks.Sims.Gen.Simulator do

  use Mix.Task


  @doc false
  def run(args) do

    # default location
    target_path = Path.join([File.cwd!(), "test", "support", "simulators"])

    Mix.Generator.create_directory(target_path)


  end

end
