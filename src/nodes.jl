module Nodes


export Node, value, next


mutable struct Node{T}

    value::T
    next::Union{Node{T},Nothing}

    function Node{T}(value::T) where {T}
        new{T}(value, nothing)
    end

    function Node{T}(value::T, next::Node{T}) where {T}
        new{T}(value, next)
    end

end


function value(node::Node{T})::T where {T}
    node.value
end


function next(node::Node{T})::Union{Node{T},Nothing} where {T}
    node.next
end


end
