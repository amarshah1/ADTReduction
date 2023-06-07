
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
(assert (not (= l1 Nil)) )
(assert (or (= l2 l0) (is-Nil l0) (= l3 l1)) )
(assert (= l3 Nil) )
(assert (= l1 l2) )
(assert (not (= l2 l1)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 l3) (is-Cons Nil)) )
(check-sat)
