#ifndef TOY_OPS
#define TOY_OPS

include "mlir/IR/OpBase.td"

def ToyDialect : Dialect {
  let name = "toy";
  let cppNamespace = "toy";
}

class ToyOp<string mnemonic, list<Trait> traits = []>
    : Op<ToyDialect, mnemonic, traits>;

#endif
