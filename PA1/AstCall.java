public class AstCall {
  public void printz(ExprNode node){
   if(node instanceof NumNode){
     System.out.println(Double.parseDouble(node.data));
   }else if(node instanceof InfixNode){
     if(node.data.equals("+")) System.out.println("ADD");
     else if(node.data.equals("-")) System.out.println("SUB");
     else if(node.data.equals("*")) System.out.println("MUL");
     else if(node.data.equals("/")) System.out.println("DIV");
   } else if(node instanceof AssignNode){
    System.out.println("ASSIGN");
   } else System.out.println(node.data);
   
  }
  public void Call(ExprNode node, int depth){
    for(int i=0; i<depth; i++){
      System.out.print("\t");
    }
    printz(node);
    if(node.left!=null) Call(node.left, depth+1);
    if(node.right!=null) Call(node.right, depth+1);  
  }
}
