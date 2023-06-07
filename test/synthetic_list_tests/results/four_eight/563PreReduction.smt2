
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
(assert (and (= l3 Nil) (= l3 Nil) (= l3 l2)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons l0) )
(assert (or (is-Cons l2) (= l1 Nil)) )
(assert (or (is-Nil l2) (= l2 Nil) (= l2 Nil) (= l0 l2)) )
(assert (not (= l1 Nil)) )
(check-sat)
