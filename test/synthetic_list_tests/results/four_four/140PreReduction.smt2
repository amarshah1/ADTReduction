
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
(assert (not (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (or (is-Cons l2) (= l3 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l2 l3) (= l1 Nil)) )
(check-sat)
