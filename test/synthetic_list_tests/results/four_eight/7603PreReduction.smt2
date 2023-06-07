
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
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (= l1 l1)) )
(assert (and (= l2 l0) (= l3 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons l2) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons l2) (is-Nil l3)) )
(assert (or (is-Cons Nil) (= l3 l0)) )
(check-sat)
