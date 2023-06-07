
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
(assert (and (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons l3) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l3 Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l2 l1) (= l2 l2)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil l3) )
(check-sat)
