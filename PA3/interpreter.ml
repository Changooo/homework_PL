module F = Format
open Value
open Ast

let rec interp_expr (e: Ast.expr) (g: FStore.t) (s: Store.t) : Value.t = 
  match e with
  | Ast.Num n -> NumV n
  | Ast.Add (e1, e2) -> 
    let addNumV (NumV x) (NumV y) = NumV (x+y) in
    let evatd_e1 = interp_expr e1 g s in
    let evatd_e2 = interp_expr e2 g s in
    addNumV evatd_e1 evatd_e2
  | Ast.Sub (e1, e2) -> 
    let subNumV (NumV x) (NumV y) = NumV (x-y) in
    let evatd_e1 = interp_expr e1 g s in
    let evatd_e2 = interp_expr e2 g s in
    subNumV evatd_e1 evatd_e2
  | Ast.LetIn (vname, vval, e) -> 
    let evatd_var = interp_expr vval g s in
    let updtd_store = Store.add vname evatd_var s in 
    interp_expr e g updtd_store
  | Ast.Call (fname, call_param) ->
    let func = 
      let err = "Undefined function: "^fname in
      try FStore.find fname g with 
      | Not_found -> failwith err in 
    let def_param, fbody = func in
      let rec count p = match p with
        | [] -> 0
        | _ :: t -> 1+(count t) in
      let call_num = count call_param in
      let def_num  = count def_param  in
      let err = "The number of arguments of x mismatched: Required: "^(string_of_int def_num)^", Actual: "^(string_of_int call_num) in
    let matched_param = if call_num <> def_num then failwith err else List.combine def_param call_param in
    let local_store = Store.empty in
    let local_store = List.fold_left(fun store local_var -> 
      let vname, vval = local_var in
      let evatd_var = interp_expr vval g s in
      Store.add vname evatd_var store) local_store matched_param in
    interp_expr fbody g local_store
  | Ast.Id (e) ->
    let err = "Free identifier: "^e in
    try Store.find e s with
    | Not_found -> failwith err

let interp_fundef (d: Ast.fundef) (g: FStore.t) : FStore.t = 
  let FunDef (fname, param, body) = d in
  FStore.add fname (param, body) g

let interp (p: Ast.prog) : Value.t = 
  let Prog (defs, expr) = p in
  let fstore = FStore.empty in
  let store = Store.empty in
  let fstore = List.fold_left (fun store def -> interp_fundef def store) fstore defs in
  interp_expr expr fstore store

