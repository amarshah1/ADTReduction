
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
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (is-Nil Nil) (is-Nil l1)) )
(assert (is-Cons l2) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 l1) (= l3 Nil) (= l2 l0)) )
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(check-sat)
