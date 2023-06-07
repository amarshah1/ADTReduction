
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
(assert (and (is-Cons Nil) (= l0 Nil) (is-Nil Nil) (is-Cons l0)) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (= l2 Nil) )
(assert (or (= l1 Nil) (= l1 Nil) (is-Cons l0)) )
(assert (= l0 l3) )
(assert (or (= l2 Nil) (is-Nil l3)) )
(assert (not (= l2 Nil)) )
(check-sat)