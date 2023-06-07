
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
(assert (is-Cons l3) )
(assert (= l1 l1) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil l0) )
(assert (not (= l1 Nil)) )
(assert (not (= l1 l1)) )
(assert (or (= l1 Nil) (is-Cons l3) (= l1 l0)) )
(check-sat)
