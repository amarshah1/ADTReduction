
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
(assert (and (is-Nil l3) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (= l1 l1) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Nil l0)) )
(assert (= l2 l2) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 l3) (= l1 Nil) (= l2 Nil)) )
(check-sat)
