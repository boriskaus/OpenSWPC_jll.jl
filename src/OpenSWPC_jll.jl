# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule OpenSWPC_jll
using Base
using Base: UUID
using LazyArtifacts
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("OpenSWPC")
JLLWrappers.@generate_main_file("OpenSWPC", UUID("97e963f0-2dee-5a96-a601-8cee97e19b5a"))
end  # module OpenSWPC_jll
