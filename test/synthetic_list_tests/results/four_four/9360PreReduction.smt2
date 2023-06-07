
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
(assert (and (= l0 Nil) (= l3 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (or (is-Nil l1) (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l1 l2)) )
(assert (or (= l2 l3) (= l0 Nil) (= l1 l3) (is-Nil Nil)) )
(check-sat)
