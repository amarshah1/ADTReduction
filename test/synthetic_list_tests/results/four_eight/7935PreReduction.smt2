
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
(assert (or (is-Nil l1) (= l0 l2)) )
(assert (not (= l2 l1)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l0 l3) (= l0 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l1)) )
(assert (= l1 l1) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(check-sat)
