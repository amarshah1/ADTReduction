
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (= l1 l2) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil)) )
(assert (or (= l1 l3) (is-Nil l1) (is-Cons Nil) (= l2 l2)) )
(check-sat)
