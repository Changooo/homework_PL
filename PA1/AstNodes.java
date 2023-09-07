import java.util.List;
import java.util.ArrayList;

class ExprNode {
  public ExprNode left;
  public ExprNode right;
  public String data;
  public ExprNode(){
    left = null;
    right = null;
  }
}
class ExprTree extends ExprNode {
  public List<ExprNode> children;
  public ExprTree(){
    children = new ArrayList<ExprNode>();
  }
}
class InfixNode extends ExprNode {
}
class Func0Node extends ExprNode {
}
class Func1Node extends ExprNode {
}
class VarNode extends ExprNode {
}
class AssignNode extends ExprNode {
}
class NumNode extends ExprNode {
}


