
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
(assert (not (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l2 Nil) (is-Cons l1)) )
(assert (and (is-Nil l1) (= l2 Nil)) )
(assert (or (= l3 l2) (= l0 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons Nil) (= l0 Nil)) )
(check-sat)
