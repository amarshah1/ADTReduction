
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
(assert (and (= l2 l3) (= l1 l3) (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l2 Nil)) )
(check-sat)
