module LAFF

    function laff_copy!(x::AbstractVector, y::AbstractVector)

        if (length(x) != length(y))
            error("The two vectors must have the same size.")
        end

        y .= x 

        return y

    end

    function laff_scal(α::Number, x::AbstractVector)
        return α*x
    end

    function laff_axpy!(α::Number, x::AbstractVector, y::AbstractVector)
        if (length(x) != length(y))
            error("The two vectors must have the same size.")
        end
        return laff_copy!(laff_scal(α, x) + y, y)
    end    

end # module LAFF
