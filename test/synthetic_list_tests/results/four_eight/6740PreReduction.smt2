
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
(assert (is-Nil l3) )
(assert (not (= l3 l2)) )
(assert (= l3 l0) )
(assert (not (= l0 l0)) )
(assert (and (= l3 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l2 l1)) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l2 l3) (is-Cons l2) (= l1 Nil) (= l0 l1)) )
(check-sat)
