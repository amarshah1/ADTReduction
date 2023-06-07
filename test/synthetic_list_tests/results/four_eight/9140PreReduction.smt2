
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
(assert (and (= l2 l3) (is-Cons l1) (is-Nil Nil)) )
(assert (or (= l0 Nil) (= l1 Nil) (= l0 Nil) (= l3 l0)) )
(assert (or (is-Cons Nil) (= l0 l0)) )
(assert (or (= l1 l2) (is-Nil l3) (= l0 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l3 l2) (= l2 l2)) )
(check-sat)
