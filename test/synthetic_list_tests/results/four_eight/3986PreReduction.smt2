
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
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l3 Nil) (is-Cons l1)) )
(assert (or (is-Nil l2) (= l1 Nil) (= l2 Nil) (= l0 l1)) )
(assert (= l0 Nil) )
(assert (not (= l3 Nil)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l3 Nil) (is-Nil Nil)) )
(check-sat)
