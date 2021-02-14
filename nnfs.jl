# An example neuron 

# The outputs from preseding neurons become this neuron's inputs
inputs = [1.0, 2.0, 3.0, 2.5]

# Each input has an associated weight
weights_set = [
    [0.2, 0.8, -0.5, 1.0],
    [0.5, -0.91, 0.26, -0.5],
    [-0.26, -0.27, 0.17, 0.87],
]

# Each neuron has an associated weight
biases = [2.0, 3.0, 0.5]

# Given the arguments above the output of our neuron would be:
output = [
    inputs[1] * weights_set[1][1] + inputs[2] * weights_set[1][2] + inputs[3]*weights_set[1][3] + inputs[4]*weights_set[1][4] + biases[1],
    inputs[1] * weights_set[2][1] + inputs[2] * weights_set[2][2] + inputs[3]*weights_set[2][3] + inputs[4]*weights_set[2][4] + biases[2],
    inputs[1] * weights_set[3][1] + inputs[2] * weights_set[3][2] + inputs[3]*weights_set[3][3] + inputs[4]*weights_set[3][4] + biases[3],
]

# using the built-in dot function from the LinearAlgebra library we can compute the product of two arrays 
using LinearAlgebra

# So, as a function, this would be:
function neuron(;
    inputs::Array{Float64,1},
    weights_set::Array{Array{Float64,1},1},
    biases::Array{Float64,1},
)::Array{Float64,1}

[dot(inputs, weights) for weights in weights_set] + biases
    
end

neuron(
    inputs=inputs,
    weights_set=weights_set,
    biases=biases,
)
