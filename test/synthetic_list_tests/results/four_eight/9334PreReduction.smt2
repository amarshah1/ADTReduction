
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
(assert (and (is-Nil l2) (= l1 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l0 l2)) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (is-Cons l1) (= l1 l1)) )
(assert (or (= l3 Nil) (= l0 Nil) (= l0 l3)) )
(assert (is-Cons l3) )
(assert (not (is-Cons Nil)) )
(check-sat)
