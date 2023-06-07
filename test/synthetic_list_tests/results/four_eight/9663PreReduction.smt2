
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
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil) (= l3 l0)) )
(assert (= l2 l3) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons l0)) )
(assert (= l3 l2) )
(assert (and (= l2 l1) (= l3 l0) (is-Nil l2)) )
(check-sat)
