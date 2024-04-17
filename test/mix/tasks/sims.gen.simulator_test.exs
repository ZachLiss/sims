defmodule Mix.Tasks.Sims.Gen.SimulatorTest do
  use ExUnit.Case, async: false

  @tag :tmp_dir
  test "testing", %{tmp_dir: tmp_dir} do

    IO.inspect(tmp_dir, label: "tmp_dir (sims.gen.simulator_test.exs:7)")

    File.cd!(tmp_dir)

    Mix.Tasks.New.run(["test_app"])

    File.cd!("test_app")
    File.ls() |> IO.inspect(label: " (sims.gen.simulator_test.exs:14)")

    Mix.Tasks.Sims.Gen.Simulator.run(["test_simulator"])

    assert File.dir?("test/support/simulators")

    assert File.exists?("test/support/simulators/test_simulator.ex")

  end

end
