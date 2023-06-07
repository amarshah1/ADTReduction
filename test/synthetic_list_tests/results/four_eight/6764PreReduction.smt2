
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
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l1 l2) (is-Nil l2) (= l0 Nil)) )
(assert (= l2 Nil) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Cons l3) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l3 l0) )
(assert (= l2 Nil) )
(check-sat)