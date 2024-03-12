enum Tree {
    case leaf
    indirect case node(Int, Tree, Tree)
}

let tree = Tree.node(
    2,
    .node(0, .leaf, .leaf),
    .node(3, .leaf, .node(4, .leaf, .leaf))
)

func add_values(_ tree: Tree) -> Int {
    switch tree {
    case let .node(v, a, b):
        return v + add_values(a) + add_values(b)

    case .leaf:
        return 0
    }
}

assert(add_values(tree) == 9)
