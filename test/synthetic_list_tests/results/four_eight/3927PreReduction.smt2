
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
(assert (and (= l1 Nil) (is-Nil Nil) (= l3 l1)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 l2) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Cons l3) (is-Nil l1)) )
(assert (is-Nil Nil) )
(assert (not (= l3 l2)) )
(check-sat)
