import java.util.List;
import java.util.ArrayList;
import java.lang.Math;

class Variable {
  public Variable(String n, double v){
    name = n;
    value = v;
  }
  public String name;
  public double value;
}

public class Evaluate {
    public List<Variable> vars;

    public Evaluate(){
      vars = new ArrayList<Variable>();
    }
    
    public double evaluate(ExprNode node){
      if(node instanceof NumNode){
        return Double.parseDouble(node.data);
      }else if(node instanceof VarNode){
        for(Variable var:vars){
          if(node.data.equals(var.name)){
            return var.value;
          }
        }
        return -1; //error undefined var
      }else if(node instanceof InfixNode){
        if(node.data.equals("+")) return evaluate(node.left) + evaluate(node.right);
        else if(node.data.equals("-")) return evaluate(node.left) - evaluate(node.right);
        else if(node.data.equals("*")) return evaluate(node.left) * evaluate(node.right);
        else if(node.data.equals("/")) return evaluate(node.left) / evaluate(node.right);
        return -1; //error undefined operator
      } else if(node instanceof AssignNode){
        Variable newVar = new Variable((node.left).data, evaluate(node.right));
        vars.add(newVar);
        return 0.0;
      } else if(node instanceof Func0Node){
        if(node.data.equals("sqrt")) return Math.sqrt(evaluate(node.left));
        return -1; //error undefined operator
      } else if(node instanceof Func1Node){
        if(node.data.equals("max")) return Math.max(evaluate(node.left), evaluate(node.right));
        else if(node.data.equals("min")) return Math.min(evaluate(node.left), evaluate(node.right));
        else if(node.data.equals("pow")) return Math.pow(evaluate(node.left), evaluate(node.right));
        return -1; //error undefined operator
      }
      return -1; //error undefined type
    }
}