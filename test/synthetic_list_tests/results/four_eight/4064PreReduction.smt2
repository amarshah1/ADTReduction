
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
(assert (or (= l1 Nil) (= l2 l1) (= l1 l3) (is-Nil l0)) )
(assert (or (is-Cons l1) (is-Cons Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (not (= l2 l0)) )
(assert (is-Nil Nil) )
(assert (= l0 l1) )
(check-sat)
