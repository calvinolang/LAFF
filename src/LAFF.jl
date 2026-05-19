module LAFF

    function laff_copy!(x::AbstractVector, y::AbstractVector)

        if (size(x) != size(y))
            error("The two vectors must have the same size.")
        end

        y .= x 

        return y

    end

end # module LAFF
