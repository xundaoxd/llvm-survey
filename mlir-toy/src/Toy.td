#ifndef TOY_OPS
#define TOY_OPS

include "mlir/IR/OpBase.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

def ToyDialect : Dialect {
    let name = "toy";
    let cppNamespace = "::mlir::toy";
}

class ToyOp<string mnemonic, list<Trait> traits = []> : Op<ToyDialect, mnemonic, traits>;

def ConstantOp : ToyOp<"constant", [Pure]> {
    let summary = "constant";
    let description = [{
        Constant operation turns a literal into an SSA value.
    }];

    let arguments = (ins F64ElementsAttr:$value);
    let results = (outs F64Tensor);
}

#endif
