
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
(assert (= l2 l3) )
(assert (and (is-Cons Nil) (is-Cons l2)) )
(assert (or (= l3 Nil) (is-Nil Nil) (= l1 Nil) (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (= l2 l2) )
(assert (= l0 l2) )
(check-sat)
