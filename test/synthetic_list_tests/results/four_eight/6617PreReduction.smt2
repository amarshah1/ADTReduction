
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
(assert (not (is-Nil l2)) )
(assert (is-Cons l3) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Nil l2) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l3 l3) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
