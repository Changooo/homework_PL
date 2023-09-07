public class BuildAstVisitor extends ExprBaseVisitor<ExprNode> {
  @Override public ExprNode visitProg(ExprParser.ProgContext ctx) {
    ExprTree prog = new ExprTree();
    for(int i=0; i<ctx.getChildCount(); i++){
      if(ctx.getChild(i).getText().contains(";") || ctx.getChild(i).getText().contains("\n")) continue;
      ExprNode expr = visit(ctx.getChild(i));
      prog.children.add(expr);
    }
    return prog;
  }
  @Override public ExprNode visitInfixExpr(ExprParser.InfixExprContext ctx) { 
    InfixNode infix = new InfixNode();
    infix.left = visit(ctx.getChild(0));
    infix.data = ctx.getChild(1).getText();
    infix.right = visit(ctx.getChild(2));
    return infix;
  }
  @Override public ExprNode visitFunc0Expr(ExprParser.Func0ExprContext ctx) { 
    Func0Node func0 = new Func0Node();
    func0.data = ctx.getChild(0).getText();
    func0.left = visit(ctx.getChild(2));
    return func0;
  }
  @Override public ExprNode visitFunc1Expr(ExprParser.Func1ExprContext ctx) { 
    Func1Node func1 = new Func1Node();
    func1.data = ctx.getChild(0).getText();
    func1.left = visit(ctx.getChild(2));
    func1.right = visit(ctx.getChild(4));
    return func1;
  }
  @Override public ExprNode visitVarExpr(ExprParser.VarExprContext ctx) { 
    VarNode var = new VarNode();
    var.data = ctx.getChild(0).getText();
    return var;
  }
  @Override public ExprNode visitNumberExpr(ExprParser.NumberExprContext ctx) { 
    return visit(ctx.getChild(0));
  }
  @Override public ExprNode visitParensExpr(ExprParser.ParensExprContext ctx) { 
    return visit(ctx.getChild(1));
  }

  @Override public ExprNode visitAssign(ExprParser.AssignContext ctx) { 
    AssignNode assign = new AssignNode();
    assign.data = ctx.getChild(1).getText();
    VarNode temp = new VarNode();
    temp.data = ctx.getChild(0).getText();
    assign.left = temp;
    assign.right = visit(ctx.getChild(2));
    return assign;
  }
  @Override public ExprNode visitPosNum(ExprParser.PosNumContext ctx) { 
    NumNode num = new NumNode();
    num.data = ctx.getChild(0).getText();
    return num;
  }
  @Override public ExprNode visitNegNum(ExprParser.NegNumContext ctx) {
    NumNode num = new NumNode();
    String neg = "-";
    num.data = neg.concat(ctx.getChild(1).getText());
    return num;
  }
}