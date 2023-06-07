
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
(assert (= l1 l1) )
(assert (is-Cons l0) )
(assert (and (= l3 Nil) (= l1 Nil) (= l3 l2)) )
(assert (= l3 Nil) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Nil l0)) )
(assert (or (= l3 l0) (= l1 l2) (is-Cons l3) (is-Cons Nil)) )
(check-sat)
